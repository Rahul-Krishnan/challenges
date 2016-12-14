class Apartment
  attr_reader :address, :city, :state, :zip, :rent, :start_date, :end_date, :rooms_free, :current_occupants_array

  def initialize(address, city, state, zip, rent, start_date, end_date, rooms_free, current_occupants_array)
    @address = address
    @city = city
    @state = state
    @zip = zip
    @rent = rent
    @start_date = start_date
    @end_date = end_date
    @rooms_free = rooms_free
    @current_occupants_array = current_occupants_array
  end

  def full?
    @rooms_free == 0
  end

  def add_roommate(person_object)
    if full?
      raise "There is no room left in this apartment!"
    else
      @current_occupants_array << person_object
      @rooms_free -=1
    end
  end

  def remove_roommate(person_object)
    @current_occupants_array.delete(person_object)
    @rooms_free +=1
  end
end
