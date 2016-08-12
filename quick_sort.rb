def quick_sort(arr)
	if arr.length <= 1 
		return arr
	else
		# pivot_num = arr[-1]
		pivot_sample = (arr.sample(2))
		pivot_num = arr.inject{ |sum, element| sum + element }.to_f / 2
		# pivot_index = arr.index(pivot_num)
		# arr.delete_at(pivot_index)
		left = []
		right = []
		
		arr.each do |element|
			if element <= pivot_num
				left << element 
			else
				right << element
			end
		end
		
		sorted_arr = []
		sorted_arr << quick_sort(left)
		# sorted_arr << pivot_num
		sorted_arr << quick_sort(right)
	end
	
	sorted_arr.flatten
end