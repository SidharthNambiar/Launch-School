# Ruby Basics
# Variable Scope
# Exercise 1: What's My Value? (Part 1)

# What will the following code print and why? 

# Don't run it until you have tried to answer.

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a


# Answer: The code will print 7 since operation being performed within the method doesn't mutate the caller.
