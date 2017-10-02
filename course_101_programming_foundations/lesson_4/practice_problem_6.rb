# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Methods and More Methods - Practice Problem 6

# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# Answer:
# The return value is 11 because the above expression
# chains methods together.
# In this case, the pop method is invoked on an array, whose
# return value is 'caterpillar' since it's the last element 
# in the array. This return value is then passed in as an argument
# to size, which determines the number of characters in the string,
# and in this case it is 11.