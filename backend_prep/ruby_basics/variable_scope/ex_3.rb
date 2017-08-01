# Ruby Basics
# Variable Scope
# Exercise 3: What's My Value? (Part 3)

# What will the following code print, and why? 

# Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# Answer: a is still 7 because method definitions create their own scope that's outside 
# the execution flow.