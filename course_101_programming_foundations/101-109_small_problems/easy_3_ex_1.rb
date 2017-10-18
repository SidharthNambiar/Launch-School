# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 3: Searching 101

# Write a program that solicits 6 numbers from the user, 
# then prints a message that describes whether
# or not the 6th number appears amongst the first 5 numbers.

def prompt(msg)
  puts "=> #{msg}"
end

count = 0
numbers_entered = []
ordinal_indicator =["1st", "2nd", "3rd", "4th", "5th", "last"]

while numbers_entered.size < 6
  ordinal_term = ordinal_indicator[count]
  prompt("Please enter the #{ordinal_term} number.")
  number = gets.chomp.to_i
  numbers_entered << number
  count += 1
end

number_to_check = numbers_entered.pop
if numbers_entered.include?(number_to_check)
  puts "The number #{number_to_check} appears in #{numbers_entered}."
else
  puts "The number #{number_to_check} does not appear in #{numbers_entered}."
end