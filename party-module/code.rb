module PartyGoer
  #YOUR CODE GOES HERE
  def initialize
    @drink_count = 0
  end

  def drink
    @drink_count +=1
    if @drink_count >3
      return false
    else
      return true
    end
  end

  def sing
    return "Lalalalala!"
  end

  def invited?
    return true
  end

  class PersonalizedHavocError < StandardError
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end
end

class Launcher
  extend PartyGoer
end
