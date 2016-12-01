require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

team_objects = []
TeamData::ROLL_CALL.keys.each do |team|
  team_objects << Team.new(team)
end

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  @team_names = []
  team_objects.each do |team|
    @team_names << team.team_name
  end
  erb :index
end

get "/teams/:team_name" do
  @team_name = params[:team_name]
  @player_names = TeamData::ROLL_CALL[@team_name.to_sym]
  erb :show
end

get "/positions" do
  "hello world"
end
