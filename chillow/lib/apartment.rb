class Apartment
  attr_reader :address, :city, :state, :zip, :rent, :start_date, :end_date

  def initialize(address, city, state, zip, rent, start_date, end_date)
    @address = address
    @city = city
    @state = state
    @zip = zip
    @rent = rent
    @start_date = start_date
    @end_date = end_date
  end
end
