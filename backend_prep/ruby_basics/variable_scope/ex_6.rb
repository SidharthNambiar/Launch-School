# Ruby Basics
# Variable Scope
# Exercise 6: What's My Value? (Part 6)

# What will the following code print, and why? 

# Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# Answer: The code prints an error message because a within the method isn't initialized
# and the a created outside the method isn't available for access within the method.