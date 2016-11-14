class Airplane

  attr_reader :type, :wing_load, :horsepower, :engine, :state
  attr_accessor :fuel

  def initialize type, wing_load, horsepower, fuel
    @type = type
    @wing_load = wing_load
    @horsepower = horsepower
    @fuel = fuel
    @engine = "off"
    @state = "landed"
  end

  def start
    if @fuel < 5
      "not enough fuel to start"
    elsif @engine == "off"
      @engine = "on"
      @fuel -= 5
      "airplane started"
    else
      "airplane already started"
    end
  end

  def takeoff
    if @fuel < 20
      "not enough fuel to take off"
    elsif @engine == "on"
      @state = "flying"
      @fuel -= 20
      "airplane launched"
    else
      "airplane not started yet"
    end
  end

  def land
    if @fuel < 10
      "not enough fuel to land"
    elsif @engine == "off"
      "airplane not started yet"
    elsif @state == "landed"
      "airplane already on the ground"
    else
      @state = "landed"
      @fuel -=10
      "airplane landed"
    end
  end

end
