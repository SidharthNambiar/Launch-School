# Ruby Basics
# User Input 
# Exercise 2: Your Age in Months

# Write a program that asks the user for their age in years, 
# and then converts that age to months.

puts "Whats is your age in years?"
age = gets.chomp.to_i
puts age


puts "You are #{age*12} months old."

# Further Exploration

# What happens if you enter a non-numeric value for the age?
# Answer: non-numeric values get converted to 0 when to_i is invoked 