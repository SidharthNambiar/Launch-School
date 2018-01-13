# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 9

# Given this data structure, return a new array of the same structure but with the sub arrays being ordered 
# (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# step 1: iterate through the array using map
# step 2: sort each internal array in descending array; sorted array will be store in the new array created by map

puts "Sorted in ascending order: "
ascending_order_arr = arr.map do |sub_arr|
	sub_arr.sort
end

p ascending_order_arr

puts "\nSorted in descending order: "

descending_order_arr = arr.map do |sub_arr|
	sub_arr.sort {|a,b| b <=> a}
end

p descending_order_arr
