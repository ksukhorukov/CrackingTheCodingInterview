#!/usr/bin/env ruby

#Write code to reverse a C-Style String (C-String means that “abcd” is
#	represented as  ve characters, including the null character )

def reverse_string(str)
	arr = str.split('')
	j = arr.size-1
	for i in 0..((arr.size-1)/2)
		arr[i], arr[j] = arr[j], arr[i]
		j -= 1
	end
	arr.join
end

puts reverse_string(ARGV[0])