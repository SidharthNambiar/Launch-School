# 101 Programming Foundations
# Lesson 2: Small Programs
# Pseudo Code Practice: 
# a method that returns the sum of two integers

=begin
  Given 2 integers.
  
- Define a method that accepts 2 integers.
- Within the method, add the 2 integers
- No need for explicit return since Ruby by default returns the last evaluated expression


 PSEUDO CODE
 
  START

  # Given 2 integers (num1 and num2)

  DEF addition
    num1 + num2
  END addition

  PRINT addition(num1,num2)

  END
=end

def addition(num1, num2)
  num1 + num2
end


puts addition(34,6)