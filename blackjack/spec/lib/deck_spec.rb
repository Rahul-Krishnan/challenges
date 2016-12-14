require "spec_helper"
require 'pry'

RSpec.describe Deck do
  # Your tests here
  let(:deck) { Deck.new }
  let(:dealt_cards)  {deck.deal(2)}
  let (:sorted_deck) {deck.cards.sort_by{ |card| card.face}}

  describe '.new' do
    it 'should have 52 cards' do
      expect(deck.cards.length).to eq 52
    end

    it "creates unique cards" do
      expect(deck.cards.uniq.size).to eq 52
    end

    it "shuffles the deck on initialization" do
      shuffled_cards = deck.cards[0..3]
      expect(sorted_deck[0..3] ).to_not eq shuffled_cards
      #binding.pry
      expect(sorted_deck[0].face).to eq('10')
      expect(sorted_deck[1].face).to eq('10')
      expect(sorted_deck[2].face).to eq('10')
      expect(sorted_deck[3].face).to eq('10')
    end

  end

  describe '#deal' do
    it 'should take an argument for number of cards' do

      expect(dealt_cards.length).to eq(2)

    end

    it 'should deal card objects' do
      expect(dealt_cards[0]).to be_a(Card)
    end

    it 'removes cards from the deck' do
      test = deck.deal(1)
      expect(deck.cards.length).to eq(51)
    end
  end

end
