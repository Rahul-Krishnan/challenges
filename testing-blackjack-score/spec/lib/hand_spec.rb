require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand_high) { Hand.new(["10♦", "J♥"]) }
  let(:hand_low) { Hand.new(["2♦", "3♥"]) }
  let(:hand_busted) { Hand.new(["10♦", "J♥", "2♠"]) }
  let(:hand_aces) { Hand.new(["A♦", "A♥"]) }
  let(:hand_blackjack) { Hand.new(["A♦", "J♥"]) }
  let(:hand_full) { Hand.new(["J♦", "3♣", "2♦", "5♣", "A♥"]) }
  # You can add more sample hands

  describe "#calculate_hand" do
    # We have included some example tests below. Change these once you get started!

    it "passes" do
      # Use the RSpec keyword `expect`, as it appears below, to test your assertions
      expect(hand_high.calculate_hand).to eq(20)
      expect(hand_low.calculate_hand).to eq(5)
      expect(hand_busted.calculate_hand).to eq(22)
      expect(hand_aces.calculate_hand).to eq(12)
      expect(hand_blackjack.calculate_hand).to eq(21)
      expect(hand_full.calculate_hand).to eq(21)
    end

    # it "fails" do
    #   expect(hand_high.calculate_hand).to_not eq(20)
    # end

    # Add your remaining tests here.
    it "produces a valid integer" do
      expect(hand_high.calculate_hand).to be_kind_of(Integer)
      expect(hand_low.calculate_hand).to be_kind_of(Integer)
      expect(hand_busted.calculate_hand).to be_kind_of(Integer)
      expect(hand_aces.calculate_hand).to be_kind_of(Integer)
      expect(hand_blackjack.calculate_hand).to be_kind_of(Integer)
      expect(hand_full.calculate_hand).to be_kind_of(Integer)
    end

    it "results in a score between 4 and 31" do
      expect(hand_high.calculate_hand).to be_between(4, 31).inclusive
      expect(hand_low.calculate_hand).to be_between(4, 31).inclusive
      expect(hand_busted.calculate_hand).to be_between(4, 31).inclusive
      expect(hand_aces.calculate_hand).to be_between(4, 31).inclusive
      expect(hand_blackjack.calculate_hand).to be_between(4, 31).inclusive
      expect(hand_full.calculate_hand).to be_between(4, 31).inclusive
    end

  end
end
