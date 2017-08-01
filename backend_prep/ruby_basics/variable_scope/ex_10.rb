# Ruby Basics
# Variable Scope
# Exercise 10: What's My Value? (Part 10)

# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# Answer: An error is thrown because a isn't accessible within the method my_value even it
# is being utilized within a block (inside a method).