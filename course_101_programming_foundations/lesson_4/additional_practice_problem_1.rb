# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Additional Practice - Practice Problem 1

# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names 
# are the keys and the values are the positions in the array.

# method 1

puts "Method 1:"
puts flintstones.each_with_index.to_h

# method 2

flintstones_hash = {}
flintstones.each_with_index do |value, index|
flintstones_hash[value] = index
end
puts "\nMethod 2:"
puts flintstones_hash