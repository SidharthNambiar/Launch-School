# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 3: Palindromic Strings (Part 1)

# Write a method that returns true if the string passed as an argument
# is a palindrome, false otherwise. A palindrome reads the same 
# forward and backward. For this exercise, case matters as does 
# punctuation and spaces.

def palindrome_string?(str)
  str == str.reverse
end

def palindrome_array?(arr)
  arr == arr.reverse
end

def palindrome?(input)
  input == input.reverse
end


puts "This method handles strings only:"
puts palindrome_string?('madam') == true
puts palindrome_string?('Madam') == false          # (case matters)
puts palindrome_string?("madam i'm adam") == false # (all characters matter)
puts palindrome_string?('356653') == true

puts "\nThis method handles arrays only:"
puts palindrome_array?([1,2,3,2,1]) == true
puts palindrome_array?([1,2,3,4,5]) == false
puts palindrome_array?([1,1,1]) == true
puts palindrome_array?([1,2,2,1,0]) == false

puts "\nThis method handles strings and arrays:"
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?([1,2,3,2,1]) == true
puts palindrome?([1,2,3,4,5]) == false
puts palindrome?([1,1,1]) == true
puts palindrome?([1,2,2,1,0]) == false

# Further Exploration

# Write a method that determines whether an array is palindromic; 
# that is, the element values appear in the same sequence both forwards
# and backwards in the array.

# Now write a method that determines 
# whether an array or a string is palindromic; that is, 
# write a method that can take either an array or a string argument, 
# and determines whether that argument is a palindrome. 
# You may not use an if, unless, or case statement or modifier.