# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Medium 1 - Question 3

# Alan wrote the following method, which was intended 
# to show all of the factors of the input number:

def factors(number)
  dividend = number
  divisors = []
  if number <= 0
    puts "Invalid entry!"
  end
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

puts factors(10)

# Alyssa noticed that this will fail if the input is 0,
# or a negative number, and asked Alan to change the loop.

# How can you make this work without using begin/end/until?

# Note that we're not looking to find the factors for 0 or negative numbers, 
# but we just want to handle it gracefully instead of raising an 
# exception or going into an infinite loop.

# Bonus 1

# What is the purpose of the number % dividend == 0 ?

# Answer:
# The purpose of this operation is to check if the result is an integer,
# which means there isn't a remainder.

# Bonus 2

# What is the purpose of the second-to-last line in the method 
# (the divisors before the method's end)?

# Answer:
# The purpose of the divisors is to make sure the method returns
# a list of all the dividends for number