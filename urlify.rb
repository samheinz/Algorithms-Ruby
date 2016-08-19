def urlify(str)
	str.lstrip!.rstrip!.gsub!(/\s/, "%20")
end