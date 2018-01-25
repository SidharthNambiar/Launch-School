# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 4: Exercise 7 -Convert a String to a Number!

# The String#to_i method converts a string of numeric characters 
# (including an optional plus or minus sign)
# to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. 
# In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. 
# You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; 
# assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc. 
# Your method should do this the old-fashioned way and calculate the result by analyzing the characters 
# in the string.

def string_to_integer(str)
	
	
	lookup_table = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
					'5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

	array_of_numbers = str.chars.map { |char| lookup_table[char] }

	total = 0
	array_of_numbers.reverse.each_with_index do |number, index|
		total += (number)*(10**index)
	end
	total

end

# Examples

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

# Further Exploration
# Write a hexadecimal_to_integer method that converts a string representing 
# a hexadecimal number to its integer value.

def hexadecimal_to_integer(hex)
	
	hex.downcase!

	lookup_table = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
					'5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
				    'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13,
					'e' => 14, 'f' => 15}

	array_of_numbers = hex.chars.map { |char| lookup_table[char] }
	
	total = 0
	array_of_numbers.reverse.each_with_index do |number, index|
		total += (number)*(16**index)
	end
	total
end


# Example:

puts hexadecimal_to_integer('4D9f') == 19871