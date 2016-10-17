# For every number from 1 to 100, print how many times 2 divides it.

def divides
  (1..20).each do |num|
    counter = 0
    number = num
    while number % 2 == 0
      number = number / 2
      counter += 1
    end
    if counter != 0
      print "\nNumber #{num} is divisible by 2: #{counter} times."
    end
  end
end

divides
