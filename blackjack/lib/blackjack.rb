require_relative "card"
require_relative "deck"
require_relative "hand"
require_relative "player"
require_relative "dealer"
require 'pry'

##########################################

def exit_game?
  system 'clear'
  deck = Deck.new
  player = Player.new
  dealer = Dealer.new
  game_status = nil

  while game_status != "Q"
    if player.balance <= 0
      puts "Out of $$! Get outta here, you bum!"
      exit
    end
    puts "Welcome to BlackJack! Press Q to Quit, or any other key to continue..."
    game_status = gets.chomp.upcase
    if game_status != "Q"
      system 'clear'
      run_game(player, dealer, deck)
    else
      puts "Goodbye!"
    end
  end

  exit
end


def run_game(player, dealer, deck)
  place_bets(player)
  deck = Deck.new
  player.hand = Hand.new(deck.deal(2))
  dealer.hand = Hand.new(deck.deal(2))
  player.hand_print
  puts
  dealer.hand_print(1)
  puts
  players_gonna_play(player, dealer, deck)
  check_result(player, dealer)
end


def place_bets(player)
  puts "Current Balance: #{player.balance}"
  player.wager = 0
  while !(player.wager > 0 && player.wager <= player.balance)
    puts "What is your wager for this round?"
    player.wager = gets.chomp.to_i
  end
end


def players_gonna_play(player, dealer, deck)
  player_turn = 0
  while (player.check_bust==false && dealer.check_bust==false && player_turn <1 )
    human_play(player, deck)
    player_turn += 1
    auto_play(player, dealer, deck)
  end
end

def human_play(player, deck)
  action = ""
  while !(action.include?("S"))
    puts "*"*40
    puts "Please choose to (H)it or (S)tand:"
    action = gets.chomp.upcase
    if action == "H"
      player.hit(deck)
      if player.check_bust
        break
      end
    elsif action == "S"
      action
    end
  end
end

def auto_play(player, dealer, deck)
  while (dealer.hand.calculate_hand < 17 && player.check_bust==false)
    dealer.hit(deck)
  end
end

def check_result(player, dealer)
  system 'clear'
  puts "*"*40
  player.hand_print
  puts
  dealer.hand_print
  puts
  if player.check_bust==true
    puts "BUSTED! YOU LOSE!"
    player.balance -= player.wager
  elsif dealer.check_bust==true
    puts "DEALER BUSTED! YOU WIN!"
    player.balance += player.wager
  elsif player.hand.calculate_hand < dealer.hand.calculate_hand
    puts "YOU LOSE!"
    player.balance -= player.wager
  elsif player.hand.calculate_hand > dealer.hand.calculate_hand
    puts "YOU WIN!"
    player.balance += player.wager
  else
    puts "PUSH! NO WINNERS HERE, JUST LOSERS."
  end
  puts "*"*40
end
