# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: Sum or Product of Consecutive Integers

# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum
# or product of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
computation = gets.chomp.downcase

computation == 's' ? result = 0 : result = 1
count = number

while count >= 1
  if computation == 's'
    result += number
  else
    result *= number
  end
  count -= 1
  number -= 1
end

puts result
