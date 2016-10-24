class Person

  attr_reader :first_name, :middle_name, :last_name

  def initialize first_name, middle_name = nil, last_name = nil
    if middle_name.nil?
      name = first_name.split(" ")
      @first_name = name[0]
      if name[2].nil?
        @last_name = name[1]
      else
        @middle_name = name[1]
        @last_name = name[2]
      end
    elsif last_name.nil?
      @first_name = first_name
      @last_name = middle_name
    else
      @first_name = first_name
      @middle_name = middle_name
      @last_name = last_name
    end
  end
end
