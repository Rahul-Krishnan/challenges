class BoundingBox

  attr_reader :width, :height

  def initialize (x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    @x
  end

  def right
    @x + @width
  end

  def bottom
    @y
  end

  def top
    @y + @height
  end

  def contains_point? (a,b)
    a >= self.left &&
    a <= self.right &&
    b >= self.bottom &&
    b <= self.top
  end

end
