# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Methods and More Methods - Practice Problem 8

# How does take work? 
# Answer:
# The take method, when invoked on an array selects
# the first n (passed in as an argument) elements in the array
# and return an array with the selected elements. 

# Is it destructive?
# Answer:
# No, the method isn't destructive.

# How can we find out?
# We can test it in irb or check the documentation.

arr = [1, 2, 3, 4, 5]
arr.take(2)