# A string has “balanced” parentheses if every open parenthesis ( is followed by a matching close parenthesis ), and every close parenthesis is preceded by a matching open parenthesis. In other words, “( )” is balanced, but “) (“ is not, nor is “)” or “(“. Write a function to determine if a string has balanced parentheses.


def balanced(string)
  p = 0
  string.each_char do |c|
    if c == "("
      p += 1
    elsif c == ")"
      if p == 0
        return false
      else
        p -= 1
      end
    end
  end
  # if p == 0
  #   return true
  # else
  #   return false
  # end
  # This is the same and better:
  return p == 0
end

print balanced("(a)()(12())(yy)")
