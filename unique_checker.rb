def unique_checker(str)
	return false if str.length > 128

	arr = string.split("")
	
	if arr.uniq.length == arr.length
		return true
	else
		return false
	end
end