# YOUR CODE HERE
def sing(n)
  if n%10 == 0
    punctuation = "!"
  else
    punctuation = "."
  end

  puts "#{n} bottles of beer on the wall, #{n} bottles of beer#{punctuation}"
  puts "Take one down and pass it around, #{n-1} bottle#{"s" unless n==2} of beer on the wall.\n\n"
end

(2..99).reverse_each do |n|
  sing(n)
end

puts "1 bottle of beer on the wall, 1 bottle of beer."
puts "Take on down and pass it around, no more bottles of beer on the wall.\n\n"

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
