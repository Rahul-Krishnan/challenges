require_relative "./team_data"

class Player

  def initialize (name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.all
    player_objects_all = []
    TeamData::ROLL_CALL.each do |team|
      team.each do |position, player|
        player_objects_all << Player.new(player, position, team)
      end
    end
    player_objects_all
  end

end
