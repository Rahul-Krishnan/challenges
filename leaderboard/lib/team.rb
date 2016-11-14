class Team
  # YOUR CODE GOES HERE
  attr_reader :name, :rank, :wins, :losses

  def initialize name
    @name = name
    @rank = nil
    @wins = 0
    @losses = 0
  end
  
end
