# Given a string, return an array representing the compressed version of it, as per #11.

def compress(string)
  array = []
  x = 0
  y = string.length
  y.times do
    counter = 1
    if string[x] != string[x-1]
      char = string[x]
      if char == string[x+1]
        while string[x] == string[x+1]
          counter += 1
          x += 1
        end
      else
        x += 1
      end
      array.push(char)
      array.push(counter)
    else
      x += 1
    end
  end
  print array
end

compress("hhheeeellllloooooo")
