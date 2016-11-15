require 'spec_helper'

RSpec.describe Leaderboard do
  let(:board) { Leaderboard.new }

  describe ".new" do
  # YOUR CODE GOES HERE
    it "creates an empty scoreboard" do
      expect(board.scoreboard).to eq([])
    end
  end

  describe ".teams_fill" do
    it "creates Team objects to fill the scoreboard" do
      board.teams_fill
      expect(board.scoreboard).not_to eq([])
    end
  end

  describe ".scores_fill" do
    it "fills in win and loss data for teams" do
      board.teams_fill
      board.scores_fill
      #binding.pry
      board.scoreboard.each do |team|
        expect(team.wins + team.losses).not_to eq(0)
      end
    end
  end

  describe ".rank_order" do
    it "sorts the teams in order of wins and losses" do
      board.teams_fill
      board.scores_fill
      board.rank_order
      expect(board.scoreboard[0].name).to eq("Patriots")
      expect(board.scoreboard[1].name).to eq("Steelers")
      expect(board.scoreboard[2].name).to eq("Broncos")
      expect(board.scoreboard[3].name).to eq("Colts")
      #binding.pry
    end
  end

  describe ".display" do
    it "displays the teams in terminal" do
      board.teams_fill
      board.scores_fill
      board.rank_order
      expect(board.display).not_to eq("")
    end
  end

end
