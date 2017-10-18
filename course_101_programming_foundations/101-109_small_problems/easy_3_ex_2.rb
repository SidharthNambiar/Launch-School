# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 3: Arithmetic Integer

# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations 
# on those two numbers: addition, subtraction, product, quotient,
# remainder, and power. Do not worry about validating the input.

def prompt(msg)
  puts "=> #{msg}"
end

prompt("Please enter the first number:")
first_number = gets.chomp.to_i

prompt("Please enter the second number:")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number ** second_number}")

# Discussion

# There are some edge cases to consider in this exercise. 
# We have to be careful of not having a second number that is zero. 

# What if we wanted to use floats instead of integers?
# Answer: Instead of using to_i, we can use to_f

# How does this change this problem?
# Answer: Unlike before, the results will have decimal values