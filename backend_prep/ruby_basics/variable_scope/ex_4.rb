# Ruby Basics
# Variable Scope
# Exercise 4: What's My Value? (Part 4)

# What will the following code print, and why? 

# Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# Answer: The following code prints Xy-zy because the opertion being performed is mutable.
