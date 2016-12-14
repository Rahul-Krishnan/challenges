class Zoo

attr_accessor :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @cages = make_cages
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @employees = []
  end

  def make_cages
    @cages = []
    10.times do
      @cages << Cage.new
    end
    @cages
  end

  def add_employee(name)
    @employees << name
  end

  def open?(date)
    @season_opening_date < date && date < @season_closing_date
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal
        return
      end
    end
    raise ZooAtCapacity
  end

  def visit
    # binding.pry
    greeting_string = ""
    @employees.each do |employee|
      greeting_string += employee.greet + "\n"
    end
    @cages.each do |cage|
      greeting_string += cage.animal.speak + "\n" unless cage.empty?
    end
    greeting_string
  end

end

class ZooAtCapacity < StandardError
end
