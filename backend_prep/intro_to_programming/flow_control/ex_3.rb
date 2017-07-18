# Introduction to Programming
# Flow Conrol
# Exercise 3

# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between:
# 0 and 50,
# 51 and 100,
# or above 100.

puts "Please enter a number between 0 and 100."
num = gets.chomp.to_i

if num >= 0 && num < 51
  puts "The number is between 0 and 50."
elsif num >= 51 && num < 101
  puts "The number is between 51 and 100."
elsif num >= 101
  puts "The number is above 100."
else 
  puts "The number entered is out of range."
end
    

