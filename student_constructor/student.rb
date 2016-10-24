class Student

  attr_reader :first_name, :last_name, :grade_list

  def initialize first_name, last_name, grade_list
    @first_name = first_name
    @last_name = last_name
    @grade_list = grade_list
  end

end

class Student_hash

  attr_reader :first_name, :last_name, :grade_list, :average

  def initialize data
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @grade_list = data[:grade_list]
    @average = grade_list.reduce(:+)/grade_list.size.to_f
  end

end
