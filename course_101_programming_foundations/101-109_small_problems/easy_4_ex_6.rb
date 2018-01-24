# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 4: Exercise 6 - Running Totals

# Write a method that takes an Array of numbers, 
# and returns an Array with the same number of elements,
# and each element has the running total from the original Array.

def running_total(arr)

	total = 0
	arr.map  {|num| total += num}

end

# Examples:

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

# Further Exploration
# Try solving this problem using Array#each_with_object or Enumerable#inject 
# (note that Enumerable methods can be applied to Arrays).

def running_total_2(arr)

	total = 0
	
	arr.each_with_object([]) do |num, array|
		total += num
		array << total
	end

end

puts "\nUsing each_with_object:"

puts running_total_2([2, 5, 13]) == [2, 7, 20]
puts running_total_2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total_2([3]) == [3]
puts running_total_2([]) == []
