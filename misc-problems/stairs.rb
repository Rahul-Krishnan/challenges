ways_to_climb(1) = 1
ways_to_climb(2) = 3
ways_to_climb(3) = 4

ways_to_climb(7) = 44

def ways_to_climb(total_steps)
  first_step = 0
  total_ways = 0
  case total_steps
  when 0 then total_ways = 0
  when 1 then total_ways = 1
  when 2 then total_ways = 3
  when 3 then total_ways = 4
  else
    while first_step < 4 && remaining_steps >= 0
      first_step += 1
      remaining_steps = total_steps - first_step
      total_ways += ways_to_climb(remaining_steps)
  end
  total_ways
end

def ways_to_climb(total_steps, ways_so_far=0)
  first_step = 0
  remaining_steps = total_steps
    while first_step < 3 && remaining_steps >= 0
      first_step += 1
      remaining_steps -= first_step
      if remaining_steps < 0
      elsif remaining_steps == 0
        ways_so_far += 1
      elsif remaining_steps == 1
        ways_so_far += 1
      elsif remaining_steps == 2
        ways_so_far += 3
      elsif remaining_steps == 3
        ways_so_far += 4
      else
        ways_so_far += ways_to_climb(remaining_steps, ways_so_far)
        binding.pry
      end
    end
  ways_so_far
end
