
def disclaimer
  puts "\n***DISCLAIMER***\nThis code may not work the way you expect it to.\nBy using this temperamental program, you agree not to\nsue the pants off of its creator.\n***\n\n"
end

proceed = ""
while proceed != "y"
  disclaimer
  puts "You must accept our disclaimer to proceed! Do you accept? (Y/N)"
  proceed = gets.chomp.downcase
end

puts
puts "3 + 2 = #{rand(6)}"

disclaimer
