# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Selection and Transformation: Example 4

# For example, let's create a method called multiply 
# that can take an additional argument to determine 
# the transformation criteria.



def multiply(numbers, multiplier)
  
  counter = 0
  result = []

  loop do
    break if counter == numbers.size
    result << numbers[counter] * multiplier
    counter += 1
  end
  result
end

my_numbers = [1, 4, 3, 7, 2, 6]
p my_numbers
p multiply(my_numbers, 3)
p my_numbers