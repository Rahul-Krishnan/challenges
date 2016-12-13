require_relative "card"
require_relative "deck"
require_relative "hand"

class Player
  attr_reader :name
  attr_accessor :hand
  
  def initialize
    @name = 'Player'
    @hand = []
  end

  def hit(card)
  end

  def stand
  end


end
