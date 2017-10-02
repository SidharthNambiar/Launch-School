# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Methods and More Methods - Practice Problem 3

# What is the return value of reject in the following code? Why?

# Answer:
# Since the block returns NIL for every iteration (element),
# and since NIL is considered to be falsey, then the reject
# method will return the element for which the block returns
# false.
# In this case an array is returned with every element in it.
# => [1,2,3]

[1, 2, 3].reject do |num|
  # p num
  puts num
end