# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 3: Palindromic Strings (Part 2)

# Write another method that returns true if the string passed as an argument is
# a palindrome, false otherwise. 
# This time, however, your method should be case-insensitive, 
# and it should ignore all non-alphanumeric characters. 
# If you wish, you may simplify things by calling the palindrome? method 
# you wrote in the previous exercise.

ALPHA_RANGE = 'a'..'z'
NUMERIC_RANGE = 0..9

def filter_non_alhpanumeric(str)
  parsed_array = []
  str.chars.each do |item|    
    parsed_array << item if ALPHA_RANGE.include?(item.downcase) || NUMERIC_RANGE.include?(item)
  end
  parsed_array.join
end

def real_palindrome?(input)
  parsed_string = filter_non_alhpanumeric(input)
  parsed_string.downcase == parsed_string.downcase.reverse 

end

def real_palindrome_2?(input)
  input = input.downcase.delete('^a-z0-9')
  input == input.reverse
end


puts "Method 1: "
puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false

puts "Method 2: "
puts real_palindrome_2?('madam') == true
puts real_palindrome_2?('Madam') == true           # (case does not matter)
puts real_palindrome_2?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome_2?('356653') == true
puts real_palindrome_2?('356a653') == true
puts real_palindrome_2?('123ab321') == false