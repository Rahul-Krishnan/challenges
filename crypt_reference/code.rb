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
