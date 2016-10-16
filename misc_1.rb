# Print all numbers from 1 to 100 that are divisible by 3 or by 5, but not by both.

def print_nums
  101.times do |x|
    if x % 3 == 0 && x % 5 != 0
      print "#{x} "
    elsif x % 5 == 0 && x % 3 != 0
      print "#{x} "
    end
  end
end

print_nums
