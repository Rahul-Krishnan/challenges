#Tips
knife = 2.1 + 0.77 + 5 + 1 + 3
torch = 6.00 + 3.50 + 7.00
hand = 2.00 + 1.00
blockhead = 0.75 + 0.43

#Sum
total = knife + torch + hand + blockhead

#Statements
puts "Knife Juggling:"
puts sprintf("%.2f", knife)
puts "Torch Juggling:"
puts sprintf("%.2f", torch)
puts "Hand Balancing:"
puts sprintf("%.2f", hand)
puts "Human Blockhead:"
puts sprintf("%.2f", blockhead)
puts "Total Income:"
puts sprintf("%.2f", total)
puts "Average Tip Value:"
puts sprintf("%.2f", total/12)

#Audience interaction
puts "Welcome to the Grand Show! You, by the keyboard, what is your name?"
name = gets.chomp.capitalize
puts "You're a brave soul, " + name + "! Now before we move on to the next trick, tell me, what is your favourite number?"
number = gets.chomp
puts "Here we go, ladies and gentlemen- I shall attempt to juggle these knives for " + number + " seconds, all to please " + name + " here."
