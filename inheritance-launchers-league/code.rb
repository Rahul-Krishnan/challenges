class SuperHero
  attr_reader :public_identity

  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

  private
  attr_reader :secret_identity
end

class Speedster < SuperHero

  def backstory
    "Inherited Speedy Gonzales' powers after eating his soul."
  end

  def powers
    "One-second Mile"
  end

  def weakness
    "Treacle and molasses"
  end

  def speed_in_mph
    60_000
  end

end

class Brawler < SuperHero

  def backstory
    "He punched himself extremely hard."
  end

  def powers
    "Ultra Punch"
  end

  def weakness
    "Harder punches"
  end

  def health
    2000
  end

end

class Detective < SuperHero

  def backstory
    "He is a guy with a shady past."
  end

  def powers
    "Laser eye"
  end

  def weakness
    "Luke Bayne"
  end

  def speed_in_mph
    10
  end

end

class Demigod < SuperHero

  def backstory
    "He is obviously half a God."
  end

  def powers
    "Lightning Bolt"
  end

  def weakness
    "Demogorgon"
  end

  def home
    "Cosmic Plane"
  end

end

class JackOfAllTrades < SuperHero
  def backstory
    "A little bit of this, a little bit of that."
  end

  def powers
    "Multi-pronged punch-kick"
  end

  def weakness
    "Kryptonite"
  end

  def home
    "Venus"
  end

  def species
    "Alien"
  end

  def psychic?
    true
  end

end

class WaterBased < SuperHero

  def backstory
    "He is obviously half a God."
  end

  def powers
    "Double Firehose"
  end

  def weakness
    "Land-based tactics"
  end

  def home
    "Earth's Oceans"
  end

  def fans_per_thousand
    5
  end

  def psychic?
    true
  end

end
