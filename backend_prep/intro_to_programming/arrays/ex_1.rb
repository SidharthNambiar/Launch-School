# Introduction to Programming
# Arrays
# Exercise 1

# Below we have given you an array and a number. 
# Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number) ? "#{number} appears in the array" : "#{number} doesn't appear in the arry"