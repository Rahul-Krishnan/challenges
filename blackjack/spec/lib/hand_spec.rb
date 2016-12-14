require "spec_helper"

RSpec.describe Hand do
  # Your tests here
  let(:hand_high) { Hand.new([Card.new("10", "♦"),
                              Card.new("J", "♥")]) }
  let(:hand_low) { Hand.new([Card.new("2", "♦"),
                              Card.new("3", "♥")]) }
  let(:hand_busted) { Hand.new([Card.new("2", "♦"),
                                Card.new("J", "♥"),
                                Card.new("10", "♥")])}
  let(:hand_aces) { Hand.new([Card.new("A", "♦"),
                              Card.new("A", "♥")]) }
  let(:hand_blackjack) { Hand.new([Card.new("A", "♦"),
                                  Card.new("J", "♥")]) }
  let(:hand_full) { Hand.new([Card.new("J", "♦"),
                              Card.new("3", "♣"),
                              Card.new("2", "♦"),
                              Card.new("5", "♦"),
                              Card.new("A", "♥")]) }
  describe '.new' do
    it "takes an array of card objects" do
      deck = Deck.new
      hand = Hand.new
      argument_given = Hand.new(deck.deal(3))
      expect(hand.cards.length).to eq 2
      expect(argument_given.cards.length).to eq 3
      expect(hand.cards[0]).to be_a(Card)
    end
  end

  describe '#calculate_hand' do
    it "adds the numericals" do
      expect(hand_low.calculate_hand).to eq 5
    end

    it "adds the values and counts face cards as ten" do
      expect(hand_high.calculate_hand).to eq 20
      expect(hand_busted.calculate_hand).to eq 22
    end

    it "counts aces as 11 where it would not bust" do
      expect(hand_blackjack.calculate_hand).to eq 21
    end

    it "counts aces one where a bust would or does occur" do
      expect(hand_aces.calculate_hand).to eq 12
      expect(hand_full.calculate_hand).to eq 21
    end
  end

  describe '#add_card' do
    it 'adds the card to hand' do

    end
  end

end
