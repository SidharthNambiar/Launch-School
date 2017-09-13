# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 1: Array Average

# Write a method that takes one argument, 
# an array containing integers, and 
# returns the average of all numbers in the array. 
# The array will never be empty and 
# the numbers will always be positive integers.

def average(arr_of_int)
  total = 0
  arr_of_int.each {|int| total += int }
  total / arr_of_int.length
end

def float_average(arr_of_fl)
  total = 0
  arr_of_fl.each {|int| total += int }
  ((total.to_f) / arr_of_fl.length).truncate(2)
end
# Examples:

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

puts float_average([1, 5, 87, 45, 8, 8]) == 25.66
puts float_average([9, 47, 23, 95, 16, 52]) == 40.33

# The tests above should print true.

# Further Exploration

# Currently, the return value of average is an Integer. 
# When dividing numbers, sometimes the quotient isn't a whole number, 
# therefore, it might make more sense to return a Float.
# Can you change the return value of average from an Integer to a Float?