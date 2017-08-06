# Ruby Basics
# Methods 
# Exercise 7: Multiply the Sum

# Write the following methods so that each output is true.

def add(num_1, num_2)
  num_1+num_2
end

def multiply(number_1, number_2)
  number_1*number_2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36