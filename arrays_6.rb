########## No Additional Storage ###############

def equal(array1, array2)
	if array1.sort == array2.sort
		return true
	else
		return false
	end
end

print equal([5,1,2,3,4,5], [5,4,3,2,1,5])
