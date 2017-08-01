# Ruby Basics
# Variable Scope
# Exercise 7: What's My Value? (Part 7)

# What will the following code print, and why?
# Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# Answer: The code will print 7 because the local variable a is accessible within the block.
# As the block iterates through each element in the array, a is finally assigned the last value
# in the array, which is 3.