# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 3: Counting the Number of Characters

# Write a program that will ask a user for an input of a word 
# or multiple words and give back the number of characters. 
# Spaces should not be counted as a character.

def prompt(msg)
  puts "=> #{msg}"
end

prompt("Please write a word or multiple words:")
words_entered = gets.chomp

number_of_chars = words_entered.delete(" ").size #words_entered.split.join.chars.size

prompt("There are #{number_of_chars} characters in \"#{words_entered}\".")