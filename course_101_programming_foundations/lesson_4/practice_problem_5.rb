# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Methods and More Methods - Practice Problem 5

# What does shift do in the following code? How can we find out?
# The shift method permanently removes the first key-value pair
# from the hash and returns it in an array.
# => [a:, "ant"]

# We can find out by looking up the method in Ruby Docs or by 
# testing it in irb.
hash = { a: 'ant', b: 'bear' }
hash.shift