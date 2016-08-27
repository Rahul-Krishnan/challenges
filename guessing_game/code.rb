require 'pry'

#Ask for difficulty
puts "Welcome to the Guessing Game! Would you like this to be EASY or HARD?"
print "> "
difficulty = gets.chomp.downcase

#error check
while difficulty!="easy" && difficulty!="hard" do
  puts "Please give me a real answer!"
  difficulty = gets.chomp.downcase
end

#set difficulty
if difficulty == "easy"
  max = 10
else
  max = 20
end

#computer choice
answer = rand(max).to_s
tries = 1
binding.pry

puts "I have picked a number between 1 and #{max}. Guess what it is!"
print "> "
guess = gets.chomp

#tracking attempts
while guess != answer do
  puts "Wrong answer, try again!"
  tries +=1
  print "> "
  guess = gets.chomp
end

#final output
puts "Nicely done! Your score was #{tries}"
