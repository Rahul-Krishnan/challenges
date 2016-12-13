require_relative "card"
require_relative "deck"
require_relative "hand"


class Dealer
  attr_reader :name
  attr_accessor :hand

  def initialize
    @name = 'Dealer'
    @hand = []
  end

end
