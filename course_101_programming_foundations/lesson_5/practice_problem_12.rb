# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 12

# Given the following data structure, and without using the Array#to_h method, 
# write some code that will return a hash where the key is the first item 
# in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}

arr.each do |sub_array|
	hsh[sub_array.first] = sub_array.last # alternately you can use index values 0 and 1, instead for first and last
end

puts "This is the original array:"
p arr 

puts "\nThis is the hash version:"
p hsh