# YOUR CODE, HERE
def roll_die(sides)
  result = rand(1..sides)
  return result
end

def play (n, sides)
  n.times do
    die_1 = roll_die(sides)
    die_2 = roll_die(sides)
    sum = die_1 + die_2
    puts "Total: #{sum}\tYou rolled a #{die_1} and a #{die_2}."
  end
end

system "clear"
puts "\n*** Welcome to the local alley dice game! ***"

quit = 0
while quit != "q"

  faces = 0
  while faces == 0
    puts "\n\nHow many sides to your dice?"
    faces = gets.chomp.to_i
  end

  rolls = 0
  while rolls == 0
    puts "\n\nHow many rolls would you like?"
    rolls = gets.chomp.to_i
    puts
  end

  play(rolls, faces)

  puts "\n\nPress Q to quit or any other key to continue..."
  quit = gets.chomp.downcase
  system "clear"

end
