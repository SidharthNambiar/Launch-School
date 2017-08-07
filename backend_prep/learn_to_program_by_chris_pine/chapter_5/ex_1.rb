# Learn To Program
# Chapter 5: Mixing it Up
# Exercise 1

# Full name greeting. Write a program that asks for a person's first name, then middle,
# and then last. Finally, it should greet the person using their full name.

puts "Please enter your first name."
first_name = gets.chomp
puts "Please enter your middle name."
middle_name = gets.chomp
puts "Please enter your last name."
last_name = gets.chomp

puts "Hello, #{first_name} #{middle_name} #{last_name}!"