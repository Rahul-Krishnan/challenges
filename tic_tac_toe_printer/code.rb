def print_grid(board)
  board.each_with_index do | row, index |
    puts
    if index == 0
      print " #{row[0] ||= " "} | #{row[1] ||= " "} | #{row[2] ||= " "} "
    else
      puts "-"*11
      print " #{row[0] ||= " "} | #{row[1] ||= " "} | #{row[2] ||= " "} "
    end
  end
end

board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]

board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]

puts "Board A:"
print_grid(board_a)
puts
puts "\n\nBoard B:"
print_grid(board_b)
