# Given a string, return an array representing the compressed version of it, as per #11.

def compress(string)
  array = []
  string.length.times do |x|
    counter = 0
    char = string[x]
    if char == string[x + 1]
      while char == string[x+1]
        counter += 1
        x += 1
      end
    else
      x +=1
      counter += 1
    end
    array.push(char)
    array.push(counter)
  end
  print array
end

compress("hhheeeellllloooooo")
