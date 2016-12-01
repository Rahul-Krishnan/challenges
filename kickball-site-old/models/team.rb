require_relative "./team_data"
require "pry"

class Team

  attr_reader :team_name, :roster

  def initialize (team_name)
    @team_name = team_name.to_s
    @roster = TeamData::ROLL_CALL[team_name].values
  end

  def self.all
    team_objects_all = []
    TeamData::ROLL_CALL.each do |team|
      team_objects_all << Team.new(team)
    end
    team_objects_all
  end

  def players
  end

end
