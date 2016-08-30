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
puts "Hi there! Here is our menu:"
menu.each do |item, price|
  puts "#{item}: #{price}"
end

#take in order into array
puts "What would you like to order today? Please enter items separated by commas:"
order = gets.chomp
items = order.split(", ")

#add up prices for any items that match menu items
sum = 0
items.each do |item|
  sum += menu[item.downcase].to_f
end

#output total cost
puts "Thanks, your total comes to $#{sum}"
