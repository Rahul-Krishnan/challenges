def average(grades)
  grades.reduce(:+)/grades.size.to_f
end

jane_scores = [98,95,88,97,74]
samantha_scores = [85,93,98,88,49]
matt_scores = [87,93,89,97,65]

jane_average = average(jane_scores)
samantha_average = average(samantha_scores)
matt_average = average(matt_scores)

puts "Averages:"
puts "#{'Jane Average:'.ljust(20)} #{jane_average.to_s.rjust(5)}%"
puts "#{'Samantha Average:'.ljust(20)} #{samantha_average.to_s.rjust(5)}%"
puts "#{'Matt Average:'.ljust(20)} #{matt_average.to_s.rjust(5)}%"
