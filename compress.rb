def compress_str(str)
	comp_str = ""
	repeat_char_count = 0
	str_length = str.length
	for i in 0..(str_length - 1)
		repeat_char_count += 1
		if (i + 1 > str_length || str[i] != str[i + 1])
			comp_str = comp_str + str[i] + "#{repeat_char_count}"
			repeat_char_count = 0
		end
	end
	return comp_str
end