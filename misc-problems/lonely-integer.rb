def find_unique_digit(a)
101.times do |n|
    b = []
    a.each do |digit|
      if n == digit
        b << digit
      end
    end
    if b.length % 2 == 0
    else
      return n
      break
    end
  end
end
