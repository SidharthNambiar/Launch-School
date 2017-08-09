# Learn To Program
# Chapter 8: Arrays and Iterators
# Exercise 2

# Table of contents, revisited.

# Start the program with an array holding all of the information 
# for your table of contents (chapter names, page numbers, and so on.)
# Then print out the information from the array in a beautifully formatted table of contents.

center_width = 50
right_width = 20
left_width = 30

heading = ["Table of Contents"]
chapter_names = ["Chapter 1: Getting Started", "Chapter 2: Numbers", "Chapter 3: Letters" ]
page_numbers = ["page 1", "page 9", "page 13"]

puts heading.join.center(center_width)
puts "\n"

chapter_names.each_with_index do |chapter,idx|
  puts "#{chapter.ljust(left_width)} #{page_numbers[idx].rjust(right_width)} "  
 end

