#!/usr/bin/env ruby

def printPar(left, right, str, count)
	return if (left < 0 || right < left )
	if (left == 0 && right == 0)
		puts str
	else
		if (left > 0)
			str[count] = '('
			printPar(left - 1, right, str, count + 1)
		end
		if (right > left)
			str[count] = ')'
			printPar(left, right - 1, str, count + 1)
		end
	end
end

printPar(3,3,'',0)