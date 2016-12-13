class Deck
  # Your code here
  attr_reader :cards

  def initialize
    @cards = construct_deck
  end

  def construct_deck
    suits = ['♦', '♣', '♠', '♥']
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
    cards = []
    suits.each do |suit|
      ranks.each do |rank|
        cards << Card.new(rank.to_s, suit)
      end
    end
    cards.shuffle!
  end

  def deal(number_of_cards)
    @cards.shift(number_of_cards)
  end

end
