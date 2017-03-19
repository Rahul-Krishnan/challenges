def matching_right_bracket(left_bracket)
    case left_bracket
    when "{" then return "}"
    when "(" then return ")"
    when "[" then return "]"
    else return "That's not a left bracket"
    end
end

def matching_left_bracket(right_bracket)
    case right_bracket
    when "}" then return "{"
    when ")" then return "("
    when "]" then return "["
    else return "That's not a right bracket"
    end
end

def check_balanced(expression_array)
  length = expression_array.length
  matching = true
  if length == 0
      matching = true
  elsif length%2 != 0
      matching = false
  else
    expression_array.each_with_index do |bracket, index|
      if ( bracket == "}" || bracket == ")" || bracket == "]" )
        if index == 0
          matching = false
          break
        elsif expression_array[index-1] == matching_left_bracket(bracket)
            expression_array.delete_at(index)
            expression_array.delete_at(index-1)
            matching = check_balanced(expression_array)
        else
            matching = false
            break
        end
      elsif ( bracket == "{" || bracket == "(" || bracket == "[" )
        if index == length-1
          matching = false
          break
        end
      end
    end
  end
  return matching
end
