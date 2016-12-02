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
  @article_array = []
  CSV.foreach('article_data.csv') do |csv_obj|
    article_data_array = []
    csv_obj.each do |article_data|
      article_data_array << article_data
    end
    @article

end

get'/articles/new' do
  erb :new
end

post '/articles/new' do

end
