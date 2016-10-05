#ask user for order and amount
puts "Hi, what would you like to order?"
print "> "
order = gets.chomp

puts "How many of those can I get you?"
print "> "
number = gets.chomp

#check if user says 'tons', then print order output
if !(number.index("tons").nil?)
  n = rand(1..14)
  n.times do
    puts order.capitalize
  end
elsif number.to_i.to_s == number
  number.to_i.times do
    puts order.capitalize
  end
else
  puts "That didn't make sense..."
end

puts "That's all folks!"
