class Rectangle

  attr_reader :width, :height

  def initialize width, height = nil
    @width = width
    @height = height
    @height ||= width
  end

  def area
    @width * @height
  end

end
