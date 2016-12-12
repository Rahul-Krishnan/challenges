require_relative 'deck'
require 'pry'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    # Your code here after writing tests
    # Think about what this method needs to do
    total = 0
    @cards.each do |card|
      if ( card.include?("J") || card.include?("Q") || card.include?("K") )
        total +=10
      elsif !card.include?("A")
        total += card.chop.to_i
      end
    end
    aces_check(total)
  end

  def aces_check(total)
    @cards.each do |card|
      if card.include?("A")
        if total > 10
          total +=1
        else
          total +=11
        end
      end
    end
    total
  end

end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
hand.calculate_hand # Get this working properly
