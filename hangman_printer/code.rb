def print_puzzle (secret, guesses = [])
  secret.chars.each do |letter|
    if guesses.include?(letter)
      print letter + " "
    else
      print "_ "
    end
  end
end


print_puzzle("perimeter", ["a", "e", "t"])
puts
print_puzzle("triangle", ["t", "s", "g"])
