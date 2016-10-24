class CargoTruck

  attr_reader :plate_number, :branding, :odometer
  attr_accessor :driver

  def initialize plate_number, branding
    @plate_number = plate_number
    @branding = branding
    @odometer = 0
    @driver = driver
  end

  def summary
    "#{branding.capitalize} truck with plate \##{plate_number} is driven by #{driver}, total distance traveled is #{odometer} miles"
  end

end
