class Leaderboard
  GAME_INFO = [
      {
        home_team: "Patriots",
        away_team: "Broncos",
        home_score: 17,
        away_score: 13
      },
      {
        home_team: "Broncos",
        away_team: "Colts",
        home_score: 24,
        away_score: 7
      },
      {
        home_team: "Patriots",
        away_team: "Colts",
        home_score: 21,
        away_score: 17
      },
      {
        home_team: "Broncos",
        away_team: "Steelers",
        home_score: 11,
        away_score: 27
      },
      {
        home_team: "Steelers",
        away_team: "Patriots",
        home_score: 24,
        away_score: 31
      }
  ]

  # YOUR CODE GOES HERE
  require 'pry'
  attr_accessor :scoreboard, :game_data
  # Initialize board with game info
  def initialize
    @game_data = GAME_INFO
    @scoreboard = []
    @team_names = []
  end
  #fill in team objects
  def teams_fill
    @game_data.each do |game|
      @team_names << game[:home_team] if !@team_names.include?(game[:home_team])
      @team_names << game[:away_team] if !@team_names.include?(game[:away_team])
    end
    @team_names.each do |name|
      @scoreboard << Team.new(name)
    end
  end

  def scores_fill
    @game_data.each do |game|
      if game[:home_score] > game[:away_score]
        @scoreboard.each do |team|
          #binding.pry
          if team.name == game[:home_team]
            team.wins +=1
          elsif team.name == game[:away_team]
            team.losses +=1
          else
          end
        end
      elsif game[:home_score] < game[:away_score]
        #binding.pry
        @scoreboard.each do |team|
          if team.name == game[:home_team]
            team.losses +=1
          elsif team.name == game[:away_team]
            team.wins +=1
          else
          end
        end
      else
      end
    end
  end

  def rank_order
    @scoreboard.sort_by! { |team| [-team.wins, team.losses] }
    n = 1
    @scoreboard.each do |team|
      team.rank = n
      n +=1
    end
  end

  def display
    puts "-"*58
    print "| Name".ljust(10)
    print "Rank".rjust(10)
    print "Total Wins".rjust(20)
    puts "Total Losses |".rjust(20)
    @scoreboard.each do |team|
      print "| #{team.name}".ljust(10)
      print "#{team.rank}".rjust(10)
      print "#{team.wins}".rjust(20)
      puts "#{team.losses} |".rjust(20)
    end
    puts "-"*58
  end
end
