# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 1: Reverse It (Part 2)

# Write a method that takes one argument, 
# a string containing one or more words, 
# and returns the given string with all five 
# or more letter words reversed. Each string 
# will consist of only letters and spaces. 
# Spaces should be included only when more 
# than one word is present.

def reverse_words(str)
  str = str.split
  result = str.map do |word|
    if word.length >= 5
      word.reverse 
    else
      word
    end
  end
  result.join(" ")
end

# Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS