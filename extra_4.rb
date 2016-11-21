def pyramid(value)
  array = []
  string = ""
  lines = values/2
  spaces = lines - 1

  value.times do |x|
    array.push ("x")
    string += array.to_s
  end

  value.times do |x|
    array.pop(x)
    array.push(" ")
  end

end

pyramid(6)
