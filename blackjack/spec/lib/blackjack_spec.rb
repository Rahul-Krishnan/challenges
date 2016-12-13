require "spec_helper"
require 'pry'

RSpec.describe Blackjack do
  let(:card) { Card.new }
  let(:deck) { Deck.new }
  let(:player_hand) { Hand.new }
  let(:computer_hand) { Hand.new }
  let(:player) { Player.new }
  let(:dealer) { Dealer.new }

  describe "#intial_hand" do
    it "generates a new deck each game" do
        expect(deck.cards.length).to eq 48
    end

    it "deals two cards to both the dealer and the player" do
      expect(new_game.dealer.hand.cards.length).to eq 2
      expect(new_game.player.hand.cards.length).to eq 2
    end

    it "prints to screen the hand of the player and dealer" do
      hand_high = Hand.new([Card.new("10", "♦"), Card.new("J", "♥")])
      hand_low = Hand.new([Card.new("2", "♦"), Card.new("3", "♥")])
      player.hand = hand_high
      dealer.hand = hand_low
      expect { Blackjack_Game.hand_print(player) }.to output("Player was dealt 10 ♦\nPlayer was dealt J ♥\n").to_stdout
      expect { Blackjack_Game.hand_print(dealer) }.to output("Dealer was dealt 2 ♦\nDealer was dealt 3 ♥\n").to_stdout
    end
  end

  describe '#exit_game' do
    it "should quit the game when Q is pressed" do
      game_status = "Q"
      expect(exit_game).to output("Goodbye!").to_stdout
    end
    it "should play the game if Q is not pressed" do
      new_game.game_status = "P"
      expect(exit_game).to exist
    end
  end

  describe "#run_game" do
    it "should show the cards that have been dealt at first" do

    end

  end
end
