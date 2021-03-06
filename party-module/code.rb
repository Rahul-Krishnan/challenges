module PartyGoer
  #YOUR CODE GOES HERE

  def drink
    @drink_count ||= 0
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

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end
end

class Launcher
  extend PartyGoer
  include PartyGoer
end

class PersonalizedHavocError < StandardError
end
