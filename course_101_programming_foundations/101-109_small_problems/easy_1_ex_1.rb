# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 1: Repeat Yourself

# Write a method that takes two arguments, 
# a string and a positive integer, 
# and prints the string as many times as the integer indicates.

# Example:

# repeat('Hello', 3)

# Output:

# Hello
# Hello
# Hello

def repeat(input_str, pos_num)
  pos_num.times {puts input_str}
end

repeat("Hello", 8)

