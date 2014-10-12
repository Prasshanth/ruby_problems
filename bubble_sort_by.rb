def bubble_sort_by(array)
	n = array.size
	index1 = 0
	while index1 < n
		index2 = 0
		while index2 < n - index1 - 1
			if yield(array[index2], array[index2 + 1]) < 1
				temp = array[index2]
				array[index2] = array[index2 + 1]
				array[index2 + 1] = temp
			end
			
		index2 += 1
		end
		index1 += 1
	end
	return array
end



