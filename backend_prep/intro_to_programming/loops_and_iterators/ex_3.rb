# Introduction to Programming
# Loops and Iterators
# Exercise 3

# Use the each_with_index method to iterate through an array of your creation 
# that prints each index and value of the array.

my_fruits = ["apple", "banana", "cherry", "grape", "orange"]

my_fruits.each_with_index {|item, index| puts "#{index} --> #{item}"}

#launch school version
puts "\nLaunch School version:"
my_fruits.each_with_index {|item, index| puts "#{index+1}. #{item}"}