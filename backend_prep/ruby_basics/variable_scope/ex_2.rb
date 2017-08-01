# Ruby Basics
# Variable Scope
# Exercise 2: What's My Value? (Part 2)

# What will the following code print, and why? 

# Don't run the code until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# Answer: The code prints 7 beause the method doesn't mutate the caller.
# In addition, the 'a' parameter that's part of the method definition is
# not the same as the local variable that's defined outside the method;
# it's scope is outside the execution flow.