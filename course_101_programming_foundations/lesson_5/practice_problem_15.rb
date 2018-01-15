# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 15

# Given this data structure write some code to return an array 
# which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# step 1: iterate through the array
# step 2: iterate through the hash
# step 3: 	iterate through the array and check to see if any numbers are odd
# step 4: 	if there are odd numbers then hash is not valid, move to the next item in the array
# step 5: 	if all numbers are even, save the hash to a new array
# step 6:  return the new array

result = []


arr.each do |hsh|
	any_odd = false
	hsh.each do |sym, arr|			
	any_odd = true if arr.any? {|n| n.odd?}
	end
	result << hsh if any_odd == false
	
end

puts "Result using method 1: "
p result

# Launch School code uses nested boolean conditions (it's a much cleaner implementation that's easy to understand)

method2_result = arr.select do |hsh|

	hsh.all? do |sym, arr|

		arr.all? do |num|
			num.even?
		end
	end
end

puts "\nResult using method 2: "
p method2_result


