class Card
  # Your code here
  attr_reader :face, :suit, :type

  def initialize(face, suit)
    @face = face
    @suit = suit
    @type = face_type
  end

  def face_type
    if @face == 'A'
      @type = 'ace'
    elsif @face == 'K' || @face == 'Q' || @face == 'J'
      @type = 'face'
    else
      @type = 'numerical'
    end
    @type
  end
end
