# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Methods and More Methods - Practice Problem 7

# What is the block's return value in the following code?
# Answer: 
# The block's return value is a boolean value, in this case
# it is true.

# How is it determined?
# Answer:
# In this case the block is only executed once since the first
# element in the collection when passed in the block returns a 
# a value of true to the any? method. This causes any? to return
# a true without further iteration through the remaining elements.

# Also, what is the return value of any? in this code.
# Answer:
# The return value of any is true.

# What gets output by this code?
# Answer:
# The code prints 1 to the screen and then returns true.

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end