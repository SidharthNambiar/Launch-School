# Ruby Basics
# Variable Scope
# Exercise 8: What's My Value? (Part 8)

# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# Answer: The code prints an error message because the outer scope is attempting to
# access the variable a which is part of the inner scope (defined within the block)