#List arrays
time_capsule = []

#User name entry
puts "Hi there, what is your name?"
print " >"
name = gets.chomp.capitalize

#User enters items for time capsule
entry = ""
while entry != "finished" do
  puts "What would you like to add to the time capsule? Type 'Finished' when you are done!"
  print " >"
  entry = gets.chomp.downcase
  unless entry == "finished"
    #User enters number of items
    puts "How many would you like?"
    print " >"
    item_count = gets.chomp
    #store item name and count as a single string
    entry += " (#{item_count})"
    time_capsule << entry
  end
end

puts ""
puts "* * * * * * * * *"
puts ""

#If there is an empty array, let the user know
if time_capsule == []
  puts "#{name}, thanks for trying our Time Capsule! Looks like you didn't need anything today."
else
  #Items in time capsule output
  puts "#{name}, thanks for trying our Time Capsule! Here is a list of your items:"

  time_capsule.each do |item|
    print "* "
    puts item.capitalize
  end
end
