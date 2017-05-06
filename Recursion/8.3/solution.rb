#!/usr/bin/env ruby

require 'set'
require 'pp'

def generate_all_subsets(input)
	max = 1 << input.size
	subsets = []
	for i in 0..max do
		subset = []
		k = i
		index = 0
		while(k > 0) do
			if ((k & 1) > 0)
				subset << input[index]
			end
			k >>= 1
			index += 1
		end
		subsets << subset if !subset.empty? and !(subset[0] == nil)
	end
	subsets
end

pp generate_all_subsets([1,2,3])