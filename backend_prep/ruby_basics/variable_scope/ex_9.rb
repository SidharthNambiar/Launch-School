# Ruby Basics
# Variable Scope
# Exercise 9: What's My Value? (Part 9)

# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# Answer: The code prints 7 because the local variable a that's defined outside the block
# isn't being accessed by the block due to the fact that the placeholder variable has the 
# exact same name. This is know as shadowing because the block argument is hiding the local
# variable that's defined outside the block.
