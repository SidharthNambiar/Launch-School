# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 4: Exercise 10 - Convert a Signed Number to a String!

# In the previous exercise, you developed a method that converts non-negative numbers
# to strings. In this exercise, you're going to extend that method by adding the ability
# to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, 
# use integer_to_string from the previous exercise.
LOOKUP_TABLE = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
          5 => '5', 6 =>'6', 7 => '7', 8 => '8', 9 => '9'}

SIGN = ['+', '-']

def signed_integer_to_string(num)

  result = ''

  if num.is_a? Integer
    result = '-' if num.negative?
    result = '+' if num.positive?
    result = '' if num == 0

    num = num.abs

    num.digits.reverse.each do |number|
        result += LOOKUP_TABLE[number]
    end

  else
    puts "Invalid entry!"
  end
  result
end


# Examples


puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'

# Below is Launch School's solution

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

def signed_integer_to_string_version_2(number)
  case number <=> 0
  when -1 then "-#{integer_to_string_version_2(-number)}"
  when +1 then "+#{integer_to_string_version_2(number)}"
  else         integer_to_string_version_2(number)
  end
end

puts signed_integer_to_string_version_2(4321) == '+4321'
puts signed_integer_to_string_version_2(-123) == '-123'
puts signed_integer_to_string_version_2(0) == '0'

# Further Exploration
# Refactor our solution to reduce the 3 integer_to_string calls to just one.

def signed_integer_to_string_version_3(number)
  case number <=> 0
  when -1 then result = "-"
  when +1 then result = "+"
  else         result = ''
  end
  result += integer_to_string_version_2(number.abs)
end

puts signed_integer_to_string_version_3(4321) == '+4321'
puts signed_integer_to_string_version_3(-123) == '-123'
puts signed_integer_to_string_version_3(0) == '0'