# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Methods and More Methods - Practice Problem 2

# How does count treat the block's return value? 
# Answer:
# The count method evaluates whether the block's
# return value is truthy; therefore, it counts all
# the elements for which the block returns a true value.

# How can we find out?
# We can either read the documentation online, or
# modify the code to test it out.

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
  "hello"
end

