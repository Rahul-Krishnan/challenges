class Zoo

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @cages = make_cages
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
  end

  def make_cages
    @cages = []
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee

  end


end
