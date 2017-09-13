# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 1: List of Digits

# Write a method that takes one argument, a positive integer,
# and returns a list of the digits in the number.

# Examples:


def digit_list_method_1(pos_int)
  pos_int.digits.reverse
end

def digit_list_method_2(pos_int)
  digits = []
  pos_int = pos_int.to_s.chars
  while pos_int.size > 0
    digits << pos_int.shift.to_i
  end
  digits
end

puts "Method 1:"
puts digit_list_method_1(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list_method_1(7) == [7]                     # => true
puts digit_list_method_1(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list_method_1(444) == [4, 4, 4]             # => true

puts "\nMethod 2:"
puts digit_list_method_2(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list_method_2(7) == [7]                     # => true
puts digit_list_method_2(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list_method_2(444) == [4, 4, 4]             # => true