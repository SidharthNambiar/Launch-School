# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 1: Stringy Strings

# Write a method that takes one argument, a positive integer, 
# and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

def stringy(pos_int)
  result = ''
  pos_int.times do |ind|
    ind%2 == 0 ? result<<'1' : result<<'0'
  end
  result
end

# Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# The tests above should print true.