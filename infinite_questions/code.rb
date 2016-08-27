require 'pry'

answer = ""

while answer != "no" do
  puts "Hi, can I help you with something?"
  print "> "
  answer = gets.chomp.downcase
  binding.pry
end

puts "Pleased to be of assistance, goodbye now!"
