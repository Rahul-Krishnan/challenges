def prime_check(n)
  ( n == 0 || n == 1 ) ? type = "Not prime" : type = "Prime"
  m = Math.sqrt(n).to_i
  (2..m).each do |num|
      if n % num == 0
          type = "Not prime"
          break
      end
  end
  puts type
end
