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
    "True Strength:"
  end

  def weakness
    "Greatest weakness:"
  end

  def backstory
    "The real backstory..."
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
    "#{super} Inherited Speedy Gonzales' powers after eating his soul."
  end

  def powers
    "#{super} One-second Mile"
  end

  def weakness
    "#{super} Treacle and molasses"
  end

  def speed_in_mph
    60_000
  end

end

class Brawler < SuperHero

  def backstory
    "#{super} He punched himself extremely hard."
  end

  def powers
    "#{super} Ultra Punch"
  end

  def weakness
    "#{super} Harder punches"
  end

  def health
    2000
  end

end

class Detective < SuperHero

  def backstory
    "#{super} He is a guy with a shady past."
  end

  def powers
    "#{super} Laser eye"
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
    "#{super} He is obviously half a God."
  end

  def powers
    "#{super} Lightning Bolt"
  end

  def weakness
    "#{super} Demogorgon"
  end

  def home
    "Cosmic Plane"
  end

end

class JackOfAllTrades < SuperHero
  def backstory
    "#{super} A little bit of this, a little bit of that."
  end

  def powers
    "#{super} Multi-pronged punch-kick"
  end

  def weakness
    "#{super} Kryptonite"
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
    "#{super} He is obviously half a God."
  end

  def powers
    "#{super} Double Firehose"
  end

  def weakness
    "#{super} Land-based tactics"
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
