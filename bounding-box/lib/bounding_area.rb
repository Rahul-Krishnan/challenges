class BoundingArea
  def initialize(boxes=[])
    @boxes = boxes
  end

  def boxes_contain_point?(a,b)
    if @boxes == []
      false
    else
      @boxes.each do |box|
        if box.contains_point?(a,b)
          return true
          break
        end
      end
      return false
    end

  end

end
