require 'pry'
#menu items and prices
menu = {
  "hamburger" => 4.00,
  "hot dog" => 3.00,
  "fries" => 2.00,
  "chips" => 1.00,
  "water" => 1.25,
  "soda" => 1.50
}

#Ask for order, show menu
puts "Hi there! Hungry today? Here is our menu:\n\n"
menu.each do |item, price|
  puts "#{item.capitalize.ljust(10)}:\t$#{'%.2f' % price}"
end

#take in order into array
puts "\nWhat would you like to order today? Please enter items separated by commas:"
order = gets.chomp.downcase
#binding.pry

#check for no entry
while order.lstrip == ""
  puts "Order something, dude."
  order = gets.chomp.downcase
end

items = order.split(",")
items.each do |item|
  item.lstrip!
end
puts

#check for missing items
missing_items = items - menu.keys
if !missing_items.empty?
  missing_items.each do |item|
    puts "We don't have '#{item}', buddy."
  end
end

#add up prices for any items that match menu items
sum = 0
items.each do |item|
  sum += menu[item.downcase].to_f
end

#output total cost
puts "\nThanks, your total comes to $#{'%.2f' % sum}. Pay up or get out."
