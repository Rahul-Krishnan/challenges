require 'sinatra'
require 'pg'

set :bind, '0.0.0.0'
set :public_folder, File.join(File.dirname(__FILE__), "public")

def db_connection
  begin
    connection = PG.connect(dbname: 'todo')
    yield(connection)
  ensure
    connection.close
  end
end

get "/" do
  redirect "/tasks"
end

get "/hello" do
  "<p>Hello, world! The current time is #{Time.now}.</p>"
end

get "/tasks" do
  @tasks = db_connection { |conn| conn.exec('SELECT name FROM tasks')}
  erb :index
end

get "/tasks/:task_name" do
  @task_name = params[:task_name]
  erb :show
end

post "/tasks" do
  task = params["task_name"]

  db_connection do |conn|
    conn.exec_params("INSERT INTO tasks (name) VALUES ($1)", [task])
  end

  redirect "/tasks"
end
