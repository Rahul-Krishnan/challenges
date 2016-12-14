class House
  attr_reader :address, :city, :state, :zip, :price

  def initialize(address, city, state, zip, price)
    @address = address
    @city = city
    @state = state
    @zip = zip
    @price = price
  end
end
