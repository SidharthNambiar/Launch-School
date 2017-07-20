# Introduction to Programming
# Hashes
# Exercise 2


# Look at Ruby's merge method. Notice that it has two versions.

# 1. What is the difference between merge and merge!? 

# Answer:
# The merge method isn't destructive, which means it doesn't affect the hashes being merged.
# Instead it returns the result as a new hash.

# The merge! method is destructive and does permanently merge the original hashes.

# 2. Write a program that uses both and illustrate the differences.


hash_one = {:cat => "meow", :dog => "bark"}
hash_two = {cow: "moo", lion: "roar"}

puts "There are the original hashes before the merge:"
puts "HASH 1: #{hash_one}"
puts "HASH 2: #{hash_two}"

puts "\nNow using the merge method..."
puts hash_one.merge(hash_two)
puts "Here are the hashes (still the same): "
puts "HASH 1: #{hash_one}"
puts "HASH 2: #{hash_two}"

puts "\nNow using the merge! method..."
puts hash_one.merge!(hash_two)
puts "Here are the hashes (Hash 1[explicit caller] has permanently changed): "
puts "HASH 1: #{hash_one}"
puts "HASH 2: #{hash_two}"




