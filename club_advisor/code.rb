#clubs and distances
distances = {
  driver: 200,
  three_wood: 180,
  five_wood: 170,
  two_iron: 170,
  three_iron: 160,
  four_iron: 150,
  five_iron: 140,
  six_iron: 130,
  seven_iron: 120,
  eight_iron: 110,
  nine_iron: 95,
  pitching_wedge: 80,
  sand_wedge: 20,
  putter: 0
}

#Ask for user input
puts "How far from the hole are you?"
print " >"
hole_distance = gets.chomp.to_f

#Present suggestion
print "You should try the "
distances.each do |club, dist|
  if hole_distance >= dist
    puts club.to_s.tr("_", " ")
    break
  end
end
