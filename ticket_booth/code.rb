
#Greeting and ticket sale
puts "Hi there. How many adult tickets do you need?"
adult_tickets = gets.chomp
puts "Great- and how many child tickets?"
child_tickets = gets.chomp
puts "Here are your #{adult_tickets} adult tickets and #{child_tickets} child tickets"

#Food prices
hot_dog = 1.27
hamburger = 4.17
funnel_cake = 3.79
ice_cream_sandwich = 0.75

#Order calc
puts "Two hamburgers and two ice cream sandwiches come to #{2*hamburger + 2*ice_cream_sandwich}"
puts "Eight funnel cakes and a hot dog add up to #{8*funnel_cake + hot_dog}"
puts "Three of each item on the menu comes to #{3*hot_dog + 3*hamburger + 3*funnel_cake + 3*ice_cream_sandwich}"
