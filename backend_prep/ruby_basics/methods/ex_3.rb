# Ruby Basics
# Methods 
# Exercise 3: Make and Model

# Using the following code, write a method called car that takes two arguments
# and prints a string containing the values of both arguments.

def car(str_1, str_2)
  "#{str_1} #{str_2}"
end

puts car('Toyota', 'Corolla')

# Further Exploration

# Remove the #puts call from the car method. 
# Modify your program so it still prints the result.

# How do the return values of car differ with and without the #puts?
# Answer: With puts, return value is nil; without it, return value is the string