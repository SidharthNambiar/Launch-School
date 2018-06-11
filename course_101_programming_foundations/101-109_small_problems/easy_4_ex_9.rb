# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 4: Exercise 9 - Convert a Number to a String!

# In the previous two exercises, you developed methods that convert simple 
# numeric strings to signed Integers. 
# In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it 
# to a string representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. 
# Your method should do this the old-fashioned way
# and construct the string by analyzing and manipulating the number.

def integer_to_string(num)
	lookup_table = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
					5 => '5', 6 =>'6', 7 => '7', 8 => '8', 9 => '9'}
    
  result = ''

  if num.is_a? Integer
    num.digits.reverse.each do |number|
      result += lookup_table[number]
    end
    result
  else
    puts "Invalid entry!"
  end
end


# Examples

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'


# Launch School solution below


DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string_version_2(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end


puts integer_to_string_version_2(4321) == '4321'
puts integer_to_string_version_2(0) == '0'
puts integer_to_string_version_2(5000) == '5000'

# Further Exploration

# One thing to note here is the String#prepend method; 
# unlike most string mutating methods, the name of this method does not end with a !. 
# However, it is still a mutating method - it changes the string in place.

# This is actually pretty common with mutating methods that do not have a 
# corresponding non-mutating form. chomp! ends with a ! because the 
# non-mutating chomp is also defined. prepend does not end with a ! 
# because there is no non-mutating form of prepend.

# How many mutating String methods can you find that do not end with a !. 
# Can you find any that end with a !, but don't have a non-mutating form? 
# Does the Array class have any methods that fit this pattern? How about the Hash class?