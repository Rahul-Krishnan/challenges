class Circle_one

  attr_reader :radius

  def initialize radius
    @radius = radius
  end

end

class Circle_two

  attr_reader :radius

  def initialize size
    if size[:radius].nil?
      @radius = size[:diameter]/2.to_f
    else
      @radius = size[:radius]
    end
  end

end

class Circle_three

  attr_reader :radius

  def initialize size
    if size.kind_of?(Fixnum)
      @radius = size
    elsif size[:radius].nil?
      @radius = size[:diameter]/2.to_f
    else
      @radius = size[:radius]
    end
  end
end
