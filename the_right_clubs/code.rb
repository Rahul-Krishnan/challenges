REQUIRED_BAG_SIZE = 10

required_clubs = [
  :driver,
  :pitching_wedge,
  :putter
]

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

possible_club_selections = available_clubs.sample(REQUIRED_BAG_SIZE)

# YOUR CODE GOES BELOW
puts "Here's what the robot caddy thinks:"
puts ""
possible_club_selections.each do |item|
  puts "Try the #{item.to_s.gsub("_", " ")}."
end

puts ""
required_clubs.each do |item|
  unless possible_club_selections.include?(item)
    puts "*** WARNING! You're missing a #{item.to_s.tr("_", " ")} ***"
  end
end
