# Now determine if a string has balanced parentheses “(“ and “)” and brackets “[“ and “]”. Note they should be balanced with respect to each other, too. That is, symbols should be closed in the reverse order they are opened. For example “( [ ] )” is balanced, but “( [ ) ]” is not, even though parentheses and brackets are individually balanced in that string.

def balanced(string)
  stack = []
  string.each_char do |c|
    if c == "("
      stack.push(c)
    elsif c == ")"
      if stack.pop != "("
        return false
      end
    elsif c == "["
      stack.push(c)
    elsif c == "]"
      if stack.pop != "["
        return false
      end
    end
  end
  return true
end

print balanced("()()afdasdfdsa()adfds()([][][])()()()dafdsfasd")
