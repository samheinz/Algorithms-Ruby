def merge_sort(arr)
	return arr if arr.length <= 1
    middle = arr.length / 2
    left = arr[0, middle]
    right = arr[middle, arr.length]

    def merge(left, right)
    	sorted_arr = []
    	until left.empty? || right.empty?
    		if left.first <= right.first
    			sorted_arr << left.shift
    		else
    			sorted_arr << right.shift
    		end
    	end
    	sorted_arr.concat(left).concat(right)
    end

    merge(merge_sort(left), merge_sort(right))
end