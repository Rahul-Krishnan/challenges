class Hand
  # Your code here
  attr_accessor :cards

  def initialize(card_array = nil)
    deck = Deck.new
    dealt_cards = deck.deal(2)
    @cards = card_array || dealt_cards
  end

  def calculate_hand
    @total = 0
    @aces_count = 0
    @cards.each do |card|
      if (card.type == 'face')
        @total +=10
      elsif (card.type == 'numerical')
        @total += card.face.to_i
      else
        @aces_count +=1
      end
    end
    aces_calc
  end

  def aces_calc
    if @aces_count == 0
      return @total
    elsif @aces_count ==1 && @total <= 10
      return @total+=11
    elsif (@total + @aces_count + 10) <=21
      return @total += (10 + @aces_count)
    else
      return @total += @aces_count
    end
  end

  def add_card(card_object)
    @cards << card_object
  end


end
