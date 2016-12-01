require 'sinatra'
require 'sinatra/reloader'
require 'CSV'

set :bind, '0.0.0.0'  # bind to all interfaces

configure :development, :test do
  require 'pry'
end

get '/' do
  erb :index
end

get '/articles' do
  @
end

get'/articles/new' do
  erb :new
end

post '/articles/new' do

end
