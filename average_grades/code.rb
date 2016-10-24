puts "\n*** PART 1 ***"
def average(grades)
  grades.reduce(:+)/grades.size.to_f
end

jane_scores = [98,95,88,97,74]
samantha_scores = [85,93,98,88,49]
matt_scores = [87,93,89,97,65]

jane_average = average(jane_scores)
samantha_average = average(samantha_scores)
matt_average = average(matt_scores)

puts "\nAverages:"
puts "#{'Jane Average:'.ljust(20)} #{jane_average.to_s.rjust(5)}%"
puts "#{'Samantha Average:'.ljust(20)} #{samantha_average.to_s.rjust(5)}%"
puts "#{'Matt Average:'.ljust(20)} #{matt_average.to_s.rjust(5)}%"

puts "\n***PART TWO***"
def letter_grade(average)
  if average >= 90
    "A"
  elsif average >= 80
    "B"
  elsif average >= 70
    "C"
  elsif average >= 60
    "D"
  else
    "F"
  end
end

jane_letter_grade = letter_grade(jane_average)
samantha_letter_grade = letter_grade(samantha_average)
matt_letter_grade = letter_grade(matt_average)

puts "\nLetter Grades:"
puts "#{'Jane Grade:'.ljust(20)} #{jane_letter_grade.rjust(5)}"
puts "#{'Samantha Grade:'.ljust(20)} #{samantha_letter_grade.rjust(5)}"
puts "#{'Matt Grade:'.ljust(20)} #{matt_letter_grade.rjust(5)}"

puts "\n***PART THREE***\n\n"
def rankings(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student}"
  end
end

student_list = ["Johnny", "Jane", "Sally", "Elizabeth", "Michael"]

rankings(student_list)
