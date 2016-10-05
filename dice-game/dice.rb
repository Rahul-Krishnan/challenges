# YOUR CODE, HERE
def roll_die
  result = rand(1..6)
  return result
end

def play
  2.times do
    die_1 = roll_die
    die_2 = roll_die
    sum = die_1 + die_2
    puts "Total: #{sum}\tYou rolled a #{die_1} and a #{die_2}."
  end
end

system "clear"
puts "\n*** Welcome to the local alley dice game! ***\n\n"

quit = 0
while quit != "q"

  play

  puts "\n\nPress Q to quit or any other key to continue..."
  quit = gets.chomp.downcase
  system "clear"

end
