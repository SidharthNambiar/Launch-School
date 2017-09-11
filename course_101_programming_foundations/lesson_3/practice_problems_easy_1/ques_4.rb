# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Easy 1 - Question 4

# The Ruby Array class has several methods for removing items from the array. 

# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do 
# (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
p numbers
# Answer: The delete_at method will delete the element and index 1, which is 2

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
p numbers

# Answer: The delete method will delete any element in the array with a value of 1. 