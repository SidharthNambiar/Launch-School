# Introduction to Programming
# Hashes
# Exercise 5

# What method could you use to find out if a Hash contains a specific value in it? 
# Write a program to demonstrate this use.

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person.has_value?("web developer") ? "The value exists in the hash." : "The value doesn't exist in the hash."
