# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 4: Exercise 5 - Multiples of 3 and 5

# Write a method that searches for all multiples of 3 or 5 
# that lie between 1 and some other number, and then computes 
# the sum of those multiples. 
# For instance, if the supplied number is 20, the result should be 
# 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multisum(num)

	# extract multiples into an array

	multiples_found = []

	(1..num).each do |number|
		multiples_found << number if (number%3 == 0) || (number%5 == 0)
	end

	# sum all the values in the array
	total = multiples_found.reduce(:+)
end


# Examples

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168