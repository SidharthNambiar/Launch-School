# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: Reverse It (Part 1)

# Write a method that takes one argument, a string, 
# and returns the same string with the words in reverse order.

def reverse_sentence(str)
  str.split.reverse.join(" ")
end
# Examples:

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# The tests above should print true.