#!/usr/bin/env ruby

#Write a method to replace all spaces in a string with ‘%20’

def replace_space(str)
  str.gsub(' ','%20')
end

puts replace_space("This is the test")