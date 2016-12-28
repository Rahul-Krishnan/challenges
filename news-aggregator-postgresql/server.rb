require "sinatra"
require "pg"
require "pry"
require "open-uri"
require_relative "./app/models/article"

set :bind, '0.0.0.0'  # bind to all interfaces
set :views, File.join(File.dirname(__FILE__), "app", "views")

configure :development do
  set :db_config, { dbname: "news_aggregator_development" }
end

configure :test do
  set :db_config, { dbname: "news_aggregator_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

# Put your News Aggregator server.rb route code here

get '/' do
  redirect '/articles'
end

post '/articles/new' do
  @new_title = params['Title']
  @new_url = params['Url']
  @new_description = params['Description']
  # binding.pry
  if @new_title == ""
    erb :error_title
  elsif !(@new_url =~ URI::regexp)
    erb :error_url
  elsif @new_description.length < 20
    erb :error_description
  else
    db_connection do |conn|
      conn.exec_params("INSERT INTO articles(title, url, description) VALUES ($1, $2, $3)", [@new_title, @new_url, @new_description])
    end
    redirect '/articles'
  end
end

get '/articles/new' do
  erb :new
end

get '/articles' do
  @article_array = db_connection { |conn| conn.exec('SELECT * FROM articles')}
  @article_array

  erb :index
end
