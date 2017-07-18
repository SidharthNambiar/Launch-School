# Introduction to Programming
# Variables
# Exercise 4 (name_refactored_2.rb)

# Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. 
# Then outputs their full name all at once.

puts "Please enter your first name."
first_name = gets.chomp

puts "Please enter your last name."
last_name = gets.chomp

puts "#{first_name + last_name}"