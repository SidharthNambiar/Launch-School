# Learn To Program
# Chapter 5: Mixing it Up
# Exercise 2

# Bigger, better favorite number. Write a program that asks for a person's 
# favorite number. Have your program add 1 to the number, 
# and then suggest the result as a bigger and better favorite number.

puts "Please enter your favorite number."
favorite_number = gets.chomp.to_i

puts "I see #{favorite_number} is your favorite number, however I" +  
     " think #{favorite_number+1} is a bigger and better favorite number!"

