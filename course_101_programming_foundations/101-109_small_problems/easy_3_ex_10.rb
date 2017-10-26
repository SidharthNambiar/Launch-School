# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 3: Palindromic Numbers

# Write a method that returns true if its integer argument is palindromic, 
# false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(num)
  puts num
  num.to_s == num.to_s.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
puts palindromic_number?('0%o' % 05050) == true

# Suppose your number begins with one or more 0s.
# Will your method still work? 
# No, the method will not work.

# Why or why not? 
# The leading zeros causes Ruby to evaluate the number
# as an octal value instead of a decimal integer.

# Is there any way to address this?
# '0%o' % 0050500