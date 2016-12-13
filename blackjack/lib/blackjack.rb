require_relative "card"
require_relative "deck"
require_relative "hand"
require_relative "player"
require_relative "dealer"
require 'pry'

class Blackjack_Game

  attr_reader :deck, :player, :dealer
  attr_accessor :game_status

  def initialize
    @deck = Deck.new
    @player = Player.new
    @dealer = Dealer.new
    @game_status = nil
  end

  def self.run_game
    @player = Player.new
    @dealer = Dealer.new
    @player.hand = Hand.new(Deck.new.deal(2))
    @dealer.hand = Hand.new(Deck.new.deal(2))
    hand_print(@player)
    hand_print(@dealer)
  end

  def hit(individual)

  end

  def stand(individual)

  end

  def self.hand_print(individual)
    individual.hand.cards.each do |card_object|
      output = "#{individual.name} was dealt #{card_object.face} #{card_object.suit}\n"
      print output
    end
  end

  def self.exit_game?
    while @game_status != "Q"
      puts "Welcome to BlackJack! Press Q to Quit, or any other key to continue..."
      #@game_status = gets.chomp.upcase
      if @game_status != "Q"
        run_game
      else
        puts "Goodbye!"
      end
    end
    exit
  end

  exit_game?

  # Your code here...

end
