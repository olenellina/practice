def max_nums(array, num)
	hash = {}
  solution = []

	array.length.times do |x|
		if hash.has_key?(array[x])
			hash[array[x]] += 1
		else
			hash[array[x]] = 1
		end
	end

	values = hash.sort.reverse

  values.length.times do |x|
    if solution.length < num
      solution.push(values[x][0])
    end
  end

  return solution
end

print max_nums([5,6,3,2,9], 3)
