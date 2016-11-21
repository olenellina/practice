# Playing with Sets

require 'set'

mySet = Set.new [1, 2, 3]

puts mySet.include?(2)

mySet.add(4)

mySet.each do |element|
  puts element
end
