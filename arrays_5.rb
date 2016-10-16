# Given two arrays of integers, determine if they are the same other than order.
# Bonus: do this with one hash

def equal(array1, array2)
  hash = {}
  array1.length.times do |x|
    if hash.has_key?(array1[x])
      hash[array1[x]] += 1
    else
      hash[array1[x]] = 0
    end
  end
  array2.length.times do |x|
    if hash.has_key?(array2[x])
      hash[array2[x]] += 1
    else
      return false
    end
  end
  return true
end

print equal([1,2,3,4,5], [5,4,3,2,1,1,6])
