def bubble_sort(arr)
	return arr if arr.length <= 1
	n = arr.length

	switch = true

	while switch == true
		switch = false
		(0...n-1) do |i|
			if arr[i] > arr[i + 1]
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				switch = true
			end
		end
	end

	return arr
end