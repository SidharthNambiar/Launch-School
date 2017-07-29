# Introduction to Programming
# More Stuff
# Exercise 1

# Write a program that checks if the sequence of characters "lab" exists in the following strings.
# If it does exist, print out the word.

strings = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

strings.each {|str| p "#{str}" if str =~ /lab/}