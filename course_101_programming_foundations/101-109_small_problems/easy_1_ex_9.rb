# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 1: Sum of Digits

# Write a method that takes one argument, 
# a positive integer, and returns the sum of its digits.

def sum(int)
  str_ver = int.to_s #"23"; 
  arr = str_ver.chars # => ["2", "3"]

  if arr.length > 1
    num = arr.pop.to_i # 2
    remaining_value = arr.join.to_i # 3
    total = num + sum(remaining_value)# 2 + sum(3)
  else
    return int
  end
  total
end

# Launch School solution
def sum_method_2(int)
  int.to_s.chars.map(&:to_i).reduce(:+)
end

# Examples:
# Method 1 avoided use of looping constructs; therefore,
# a recursive method was implemented
puts "Method 1: "

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

puts "\nMethod 2: "

puts sum_method_2(23) == 5
puts sum_method_2(496) == 19
puts sum_method_2(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without 
# any basic looping constructs (while, until, loop, and each).