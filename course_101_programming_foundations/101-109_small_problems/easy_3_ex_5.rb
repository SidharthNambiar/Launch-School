# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 3: Squaring an Argument

# Using the multiply method from the "Multiplying Two Numbers" problem, 
# write a method that computes the square of its argument 
# (the square is the result of multiplying a number by itself).

def multiply(num1, num2)
  num1*num2
end

def square(num)
  multiply(num,num)
end

def power_to_the_n(num, power)
  arr = [num]*power
  power.odd? ? result = num : result = 1
  while arr.size > 1
    first_num, second_num = arr.pop, arr.pop
    result *= multiply(first_num, second_num)
  end
  result
end

# puts square(5)
# puts square(-8)

puts power_to_the_n(5,2)
puts power_to_the_n(-8,2)
puts power_to_the_n(5,3)
puts power_to_the_n(-8,3)
puts power_to_the_n(5,5)
puts power_to_the_n(-8,5)

# Further Exploration

# What if we wanted generalize this method to a "power to the n" type method:
# cubed, to the 4th power, to the 5th, etc. 
# How would we go about doing so while still using the multiply method?

