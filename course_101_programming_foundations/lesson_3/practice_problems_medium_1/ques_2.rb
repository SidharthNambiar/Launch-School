# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Medium 1 - Question 2

# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# The error occurs because the expression is trying to concatenate
# an integer with a string; thereby, resulting in a TypeError.

# Solution 1

puts "the value of 40 + 2 is " + (40 + 2).to_s

# Solution 2

puts "the value of 40 + 2 is #{40+2}"
