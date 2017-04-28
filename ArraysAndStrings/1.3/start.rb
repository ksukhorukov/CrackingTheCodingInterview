#!/usr/bin/env ruby

#Design an algorithm and write code to remove the duplicate characters in a string without
#using any additional buffer. NOTE: One or two additional variables are  fine
#An extra copy of the array is not
#FOLLOW UP
#Write the test cases for this method

def remove_duplicate(str)
  stats = Hash.new(0)
  result = ''
  str.split('').each do |char|
  	stats[char] += 1
  	result += char if stats[char] == 1
  end
  result
end

puts remove_duplicate(ARGV[0])