#user input
puts "Please enter driveway width (ft):"
width = gets.chomp.to_f
puts "Please enter driveway length (ft):"
length = gets.chomp.to_f
puts "Please enter snow depth (inches):"
depth = gets.chomp.to_f

#calculations
volume = width * length * depth/12
if volume.round > 300
  price = 150
elsif volume.round > 150
  price = 100
elsif volume.round > 50
  price = 50
else
  price = 20
end

#output
puts "Cubic Feet: #{volume.round}"
puts "Quote Price: $#{price}"
