#!/usr/bin/env ruby

# Implement an algorithm to determine if a string has all unique characters
# What if you can not use additional data structures?


def isUniqueChars(str)
	stats = Hash.new(0)
	str.split('').each do |char|
		stats[char] += 1
		return false if stats[char] > 1
	end
	return true
end

if isUniqueChars(ARGV[0])
	puts "unique"
else
	puts "not unique"
end