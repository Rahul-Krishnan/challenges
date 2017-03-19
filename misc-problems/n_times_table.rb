def table(n)
  n.times do |m|
    puts "#{m+1} * #{n} = #{(m+1) * n}"
  end
end

def multiply(a, b)
  sum = 0
  a.times do
    sum += b
  end
  sum
end

def ratio(n)
  m = (n * 100).round
  (1..m).to_a.reverse.each do |number|
    if m%number == 0
    else
    end
  end
end
