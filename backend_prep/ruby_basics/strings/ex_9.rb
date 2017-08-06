# Ruby Basics
# Strings 
# Exercise 9: Pluralize

# Given the following code, use Array#each to print the plural of each word in words.

words = 'car human elephant airplane'

arr = words.split(" ")
arr.each {|word| puts word << 's'}