def bin_search(array, target)
  left = 0
  right = array.length - 1

  index = left + (right - left)/ 2

  while left <= right
    if array[index] == target
      return index
    end
    if array[index] > target
      right = index - 1
    elsif array[index] < target
      left = index + 1
    end
    index = left + (right - left)/ 2
  end
  return false
end

puts bin_search([1,2,3,4,5,6,7,8,9], 9)
