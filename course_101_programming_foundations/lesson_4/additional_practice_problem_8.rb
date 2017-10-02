# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Additional Practice - Practice Problem 8

# What happens when we modify an array 
# while we are iterating over it?
# Answer:
# In this example, when we modify the array while we
# iterate over it, we affect the original relation 
# between the element and its corresponding index value.

# What would be output by this code?
# Answer:
# The code prints 1 and 3 to the screen and then returns the 
# mutated array.
# Everytime we use the shift method, we modify the length of the 
# array, thereby changing the relation between the index and element.


numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# What would be output by this code?
# Answer:
# The code below prints 1 and 2 to the screen, 
# and then returns
# => [1,2]

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end