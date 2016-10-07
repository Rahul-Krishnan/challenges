# Your code, here.
crypt_of_civilization = []

crypt_of_civilization << "Comptometer"
crypt_of_civilization << "Box of phonographic records"
crypt_of_civilization << "Plastic savings bank"
crypt_of_civilization << "Set of scales"
crypt_of_civilization << "Toast-O-Lator"
crypt_of_civilization << "Sample of aluminum foil"
crypt_of_civilization << "Donald Duck doll"

extra = ["Container of beer", "Lionel model train set", "Ingraham pocket watch"]

crypt_of_civilization = crypt_of_civilization + extra

puts crypt_of_civilization
puts ""

puts crypt_of_civilization.length
puts crypt_of_civilization.first
puts crypt_of_civilization.last
puts crypt_of_civilization[1]
puts crypt_of_civilization[2]
puts crypt_of_civilization[-2]
puts crypt_of_civilization.index("Toast-O-Lator")

puts crypt_of_civilization.include?("container of beer")
puts crypt_of_civilization.include?("Toast-O-Lator")
puts crypt_of_civilization.include?("plastic bird")

puts crypt_of_civilization.sort_by {|item| item.length}
puts crypt_of_civilization.sort
puts crypt_of_civilization.sort.reverse

puts
i = 0
while i < crypt_of_civilization.length
  puts crypt_of_civilization[i]
  i +=1
end

puts ""

i = 0
crypt_of_civilization.each do |i|
  puts i
end

crypt_of_civilization.shift
crypt_of_civilization.pop
crypt_of_civilization.delete("set of scales")
crypt_of_civilization.delete("sample of aluminium foil")
