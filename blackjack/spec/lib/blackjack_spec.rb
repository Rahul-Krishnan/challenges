require "spec_helper"
require 'pry'

RSpec.describe Object do
  let(:card) { Card.new }
  let(:deck) { Deck.new }
  let(:player_hand) { Hand.new }
  let(:computer_hand) { Hand.new }
  let(:player) { Player.new }
  let(:dealer) { Dealer.new }

  describe ".new" do
    it "generates a new deck each game" do
        expect(deck.cards.length).to eq 52
    end

    it "deals two cards to both the dealer and the player" do
      expect(computer_hand.cards.length).to eq 2
      expect(player_hand.cards.length).to eq 2
    end

    it "prints to screen the hand of the player and dealer" do
      hand_high = Hand.new([Card.new("10", "♦"), Card.new("J", "♥")])
      hand_low = Hand.new([Card.new("2", "♦"), Card.new("3", "♥")])
      player.hand = hand_high
      dealer.hand = hand_low
      expect { player.hand_print }.to output("Player has 10 ♦\nPlayer has J ♥\n").to_stdout
      expect { dealer.hand_print }.to output("Dealer has 2 ♦\nDealer has 3 ♥\n").to_stdout
    end
  end

  describe '#exit_game?' do
    it "should quit the game when Q is pressed" do
      game_status = "Q"
      expect(exit_game?).to output("Goodbye!").to_stdout
    end
    it "should play the game if Q is not pressed" do
      new_game.game_status = "P"
      expect(exit_game?).to exist
    end
  end

  describe "#run_game" do
    it "should show the cards that have been dealt at first" do

    end

  end
end
