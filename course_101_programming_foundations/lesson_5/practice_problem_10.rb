# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 10

# Given the following data structure and without modifying the original array, 
# use the map method to return a new array identical in structure to the original 
# but where the value of each integer is incremented by 1.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# step 1: iterate through the array
# step 2: iterate through the hash and increment the value by 1

puts "This is the original array:"
p arr




result = arr.map do |hsh|
	incremented_hsh = {}
	hsh.map do |k, v|
		incremented_hsh[k] = v + 1		
	end
	incremented_hsh
end

puts "\nThis is the new array with each integer incremented:"
p result
puts "\nThis is the original array:"
p arr
