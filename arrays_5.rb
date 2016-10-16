# Given two arrays of integers, determine if they are the same other than order.
# Bonus: do this with one hash

def equal(array1, array2)
  hash1 = {}
  hash2 = {}
  array1.length.times do |x|
    if hash1.has_key?(array1[x])
      hash1[array1[x]] += 1
    else
      hash1[array1[x]] = 1
    end
  end
  array2.length.times do |x|
    if hash2.has_key?(array2[x])
      hash2[array2[x]] += 1
    else
      hash2[array2[x]] = 1
    end
  end
  return hash1 == hash2
end

print equal([1,2,3,4,5], [5,4,3,2,1,1])


def equal(array1, array2)
  hash = {}
  array1.length.times do |x|
    if hash.has_key?(array1[x])
      hash[array1[x]] += 1
    else
      hash[array1[x]] = 1
    end
  end

  array2.length.times do |x|
    if hash.has_key?(array2[x])
        hash[array2[x]] -= 1
          if hash[array2[x]] == -1
            return false
          end
    else
      return false
    end
  end
  return true
end

print equal([1,2,3,4,5], [5,4,3,2,1])
