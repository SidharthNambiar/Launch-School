# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 11

# Given the following data structure use a combination of methods, 
# including either the select or reject method, to return a new array 
# identical in structure to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# step 1: iterate through the array
# step 2: iterate through sub_array to find mutliples of 3


result = arr.map do |sub_array|	
	sub_array.select {|val| val%3 == 0 }
end

puts "This is the original array: "
p arr 

puts "\nThis is the array with multiples of 3: "
p result