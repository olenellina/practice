#### Given an array, determine if any two elements sum to 10 ####

# def sum(array, sum)
# 	hash = {}
# 	array.length.times do |x|
# 		if hash.has_key?(sum - array[x])
# 			return true
# 		else
# 			hash[array[x]] = "blue"
# 		end
# 	end
#   return false
# end


#### Using Set ####
require 'set'

def sum(array, sum)
	set = Set.new
	array.length.times do |x|
		if set.include?(sum - array[x])
			return true
		else
			set.add(array[x])
		end
	end
  return false
end

print sum([5,1,2,4,3,9], 10)
print sum([10,11,5,2,3], 10)
print sum([5,-1,2,4,3,9], 10)
