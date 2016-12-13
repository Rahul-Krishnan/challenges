require_relative "card"
require_relative "deck"
require_relative "hand"

class Player
  attr_reader :name
  attr_accessor :hand, :balance, :wager

  def initialize
    @name = 'Player'
    @hand = []
    @balance = 100
    @wager = 0
  end

  def check_bust
    if @hand.calculate_hand > 21
      return true
    else
      return false
    end
  end

  def hit(deck)
    @hand.add_card(deck.deal(1))
    hand_print
    puts
  end

  def hand_print(number=nil)
    if !(number.nil?)
      print "#{@name} has #{@hand.cards[0].face} #{@hand.cards[0].suit}\n"
    else
      @hand.cards.each do |card_object|
        print "#{@name} has #{card_object.face} #{card_object.suit}\n"
      end
    end
  end

end
