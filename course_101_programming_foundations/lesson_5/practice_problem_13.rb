# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 13

# Given the following data structure, return a new array containing the 
# same sub-arrays as the original but ordered logically according to the 
# numeric value of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3],[1, 2, 5]]

# The sorted array should look like this:

# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# looked up LS's solution.
# Must get familiar with the sort_by method

result = arr.sort_by do |sub_arr|

	sub_arr.select {|num| num.odd?}

end

p result