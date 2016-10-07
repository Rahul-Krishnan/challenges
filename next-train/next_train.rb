# YOUR CODE HERE
trains = [2, 5, 7.5, 8.5, 9, 10, 11.5, 13.5, 14.5, 17, 18, 19, 24]

puts "What time are you leaving?"
time = gets.chomp.to_f

while !(time > 0 && time <=24)
  puts "I'm sorry, I don't understand that."
  puts "What time are you leaving?"
  time = gets.chomp.to_f
end

best = trains[0]

trains.each do |item|
  if time < item
    best = item
    break
  else
  end
end

puts "You should try to catch Train #{trains.index(best) + 1} leaving at #{best}"

if best == 24
  puts "\n***DON'T STOP...BELIEVIN'!***

  Just a small town girl
  Living in a lonely world
  She took the midnight train going anywhere
  Just a city boy
  Born and raised in South Detroit
  He took the midnight train going anywhere

  A singer in a smoky room
  A smell of wine and cheap perfume
  For a smile they can share the night
  It goes on and on and on and on

  Strangers waiting, up and down the boulevard
  Their shadows searching in the night
  Streetlights people, living just to find emotion
  Hiding, somewhere in the night."
else
end
