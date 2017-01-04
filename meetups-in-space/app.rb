require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra'
require 'pg'
require 'pry'
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

configure :development do
  set :db_config, { dbname: "meetups_development" }
end

configure :test do
  set :db_config, { dbname: "meetups_test" }
end

helpers do
  def current_user
    if @current_user.nil? && session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
      session[:user_id] = nil unless @current_user
    end
    @current_user
  end
end

get '/' do
  redirect '/meetups'
end

get '/auth/github/callback' do
  user = User.find_or_create_from_omniauth(env['omniauth.auth'])
  session[:user_id] = user.id
  flash[:notice] = "You're now signed in as #{user.username}!"

  redirect '/'
end

get '/sign_out' do
  session[:user_id] = nil
  flash[:notice] = "You have been signed out."

  redirect '/'
end

get '/meetups' do
  erb :'meetups/index'
end

post '/new' do
  Meeting.create(name: "name", description: "description", location: "location")
end

get '/new' do
  erb :'meetups/new_meeting'
end
