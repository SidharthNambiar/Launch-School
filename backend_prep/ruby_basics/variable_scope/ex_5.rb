# Ruby Basics
# Variable Scope
# Exercise 5: What's My Value? (Part 5)

# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# Answer: The code prints Xyzzy because the assignment operator within the method creates a new object;
# therefore, it doesn't mutate the object that is referenced.