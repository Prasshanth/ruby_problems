def bubble_sort(array)
	n = array.length
	index1 = 0
	while index1 < n
		index2 = 0
		while index2 < n - index1 - 1
			if array[index2] > array[index2 + 1]
				temp = array[index2]
				array[index2] = array[index2 + 1]
				array[index2 + 1] = temp
			end
			print array
		index2 += 1
		end
		index1 += 1
	end
	return array
end




