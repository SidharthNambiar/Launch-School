# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 1

# How would you order this array of number strings
# by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# transform numeric strings to integer
arr2 = arr.map do |item|
  item.to_i
end

puts "Method 1:"
arr2.sort!.reverse!
arr2.map! {|item| item.to_s}
p arr2

puts "\nMethod 2:"
arr3 = arr.sort do |a, b|
  b.to_i <=> a.to_i
end
p arr3
