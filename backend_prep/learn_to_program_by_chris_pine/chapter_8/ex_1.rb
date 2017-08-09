# Learn To Program
# Chapter 8: Arrays and Iterators
# Exercise 1

# Building and sorting an array.
# Write a program that asks the user to type as many words as the user wants.
# One word per line, continuing until we just press ENTER on an empty line.
# And then repeats the words back to us in alphabetical order.

words = []

puts "You can type as many words as you like, but only one word per line."
puts "When done entering, press ENTER on an empty line."
word_entered = " "

while true

  puts "\nEnter a word:"
  word_entered = gets.chomp
  break if word_entered.empty?
  word_entered.include?(" ") ? puts("No spaces are allowed. Try again!") : words << word_entered

end

p words.sort