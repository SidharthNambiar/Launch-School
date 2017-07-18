# Introduction to Programming
# Flow Conrol
# Exercise 2

# Write a method that takes a string as argument.
# The method should return the all-caps version of the string, only if the string is longer than 10 characters.
# Example: change "hello world" to "HELLO WORLD". 
# (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

def all_caps(words)
  words.length > 10 ? words.upcase : "Sorry, #{words} is not longer than 10 characters."
end

puts all_caps("hello world")
puts all_caps("goodbye")