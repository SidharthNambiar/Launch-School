# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Easy 1 - Question 1

# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# Answer:

# The code below will print out the orginal array since
# the method uniq in not a destructive method
# => 
# 1
# 2
# 2
# 3
