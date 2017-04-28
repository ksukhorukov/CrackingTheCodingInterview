#!/usr/bin/env ruby

#Write a method to decide if two strings are anagrams or not

def anagrams?(str1, str2)
	return str1.split('').sort == str2.split('').sort
end

if anagrams?(ARGV[0], ARGV[1])
  puts "true"
else
  puts "false"
end
