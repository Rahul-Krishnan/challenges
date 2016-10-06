#List arrays- Inventory and carts
souq_cart = []
no_stock = []
inventory = []

#Fill up inventory
inventory << "old paperback book"
inventory << "potato"
inventory << "red onion"
inventory << "dried lemon"
inventory << "frankincense"
inventory << "medicinal herbs"
inventory << "saffron"
inventory << "glass spice jar"
inventory << "red fabric"
inventory << "orange fabric"
inventory << "handicrafts"
inventory << "small persian rug"
inventory << "medium persian rug"
inventory << "large persian rug"
inventory << "extra large persian rug"

#User name and order
puts "Hi there! What is your name?"
print " > "
name = gets.chomp.capitalize

puts "\nHi #{name}, here is what is in stock today:"
inventory.each do |item|
  puts "* #{item.capitalize}"
end

puts "\nWhat would you like to order? Just type 'Checkout' when you're done!"
order = ""
#Place order either in the cart or in the out-of-stock array
while order != "checkout" do
  print " > "
  order =gets.chomp.downcase
  if inventory.include?(order)
    souq_cart.push(order)
  elsif order == ""
  elsif order == "checkout"
  else
    no_stock.push(order)
  end
end

puts ""
puts "* * * * * * * * * * *"
puts ""

#List shopping cart items
puts "#{name}, thanks for shopping at our Online Souq platform. Here is a list of items in your cart:\n\n"

souq_cart.each do |item|
  puts "* " + item.capitalize
end

puts ""

#List out-of-stock items
puts "Oh, and we noticed you tried to order a few items that aren't in stock at our Online Souq. We don't have the following items yet but we will let you know as soon as they show up:\n\n"

no_stock.each do |item|
  puts "* " + item.capitalize
end
