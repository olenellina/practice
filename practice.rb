# Consider an array representing a compressed string, where the array stores a series of string and repeat values. For example, a = [‘ab’, 2] represents “abab”, and a = [‘a’, 2, ‘b’, 3] represents “aabbb”. Given such an array, print the string it represents.

def compressed(array)
  x = 0
  string = ""
  y = array.length / 2
  y.times do
    array[x+1].to_i.times do
      string = string + array[x]
    end
    x += 2
  end
  return string
end

print compressed(["ab", 2, "bb", 3])
