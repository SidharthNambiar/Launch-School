# Learn To Program
# Chapter 6: More About Methods
# Exercise 2

# Table of contents. Here's something for you to do in order to play around more with
# center, ljust, and rjust: write a program that will display a table of contents 
# so that it looks like this: (see book)

center_width = 50
right_width = 20
left_width = 30

puts "Table of Contents\n".center(center_width)
puts "Chapter 1: Getting Started".ljust(left_width) +   "page  1".rjust(right_width)
puts "Chapter 2: Numbers".ljust(left_width)           + "page  9".rjust(right_width)         
puts "Chapter 3: Letters".ljust(left_width)           + "page 13".rjust(right_width)         