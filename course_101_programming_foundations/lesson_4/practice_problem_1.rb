# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Methods and More Methods - Practice Problem 1

# What is the return value of the select method below? Why?

# Answer: 
# Since the return value of the block for every iteration
# is 'hi', which is considered by Ruby to be TRUTHY; therefore
# every element in the original array is selected.

# The select method will return the following:
# => [1,2,3]

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

