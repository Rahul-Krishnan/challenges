#inventory
items_we_have = "chips popcorn skittles clif-bar mentos gum cheetos m&ms"

#ask for input
puts "What item would you like?"
selection = gets.chomp.downcase

#search for item
location = items_we_have.index(selection)

#output
if location.nil?
  puts "Sorry, we don't have that today!"
else
  puts "That's index number #{location}"
end
