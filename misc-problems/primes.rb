
type = "Prime"
n = gets.strip.to_i
(2...n).each do |num|
    if n%num == 0
        type = "Not prime"
        break
    end
end
puts type
