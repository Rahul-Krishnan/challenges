def ways_to_climb(total_steps, ways_so_far=0)
  first_step = 0
  remaining_steps = total_steps
    while first_step < 4 && remaining_steps >= 0
      first_step += 1
      remaining_steps -= first_step
      if remaining_steps == 0
        ways_so_far += 1
        binding.pry
      elsif remaining_steps < 0
      else
        ways_so_far = ways_to_climb(remaining_steps, ways_so_far)
        binding.pry
      end
    end
  # binding.pry
  ways_so_far
end
