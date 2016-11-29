require_relative "./team_data"
require "pry"

class Team

  attr_reader :team_name, :roster

  def initialize (team_name)
    @team_name = team_name.to_s
    @roster = TeamData::ROLL_CALL[team_name].values
  end

end
