# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Methods and More Methods - Practice Problem 9

# What is the return value of map in the following code? 
# Answer:
# => [nil, "bear"]

# Why?
# Answer:
# The map method is invoked on a hash, and during the first
# iteration, the value 'ant' doesn't meet the condition set 
# within the block, therefore NIL is returned by the block to 
# the map method. 
# The second/last iteration meets the condition set within the
# block, and therefore returns the current value, which is 'bear',
# to the map. 
# The map method stores the values returned to it in an array, and
# returns the populated array after the last iteration.

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end