require 'sinatra'
require 'sinatra/reloader'
require 'CSV'
require 'uri'

set :bind, '0.0.0.0'  # bind to all interfaces

configure :development, :test do
  require 'pry'
end

get '/' do
  erb :index
end

post '/articles/new' do
  @new_title = params['new_title']
  @new_url = params['new_url']
  @new_description = params['new_description']
  #binding.pry
  if @new_title == ""
    erb :error_title
  elsif !(@new_url =~ URI::regexp)
    erb :error_url
  elsif @new_description.length < 20
    erb :error_description
  else
    CSV.open('article_master.csv', 'a') do |csv_object|
      csv_object << [@new_title, @new_url, @new_description]
    end
    redirect '/articles'
  end
end

get '/articles/new' do
  erb :new
end

get '/articles' do
  @article_array = []
  CSV.foreach('article_master.csv') do |csv_object|
    dummy_array = []
    csv_object.each do |article_data|
        dummy_array << article_data
    end
    @article_array << dummy_array
  end
  @article_array

  erb :articles
end
