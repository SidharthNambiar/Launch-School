# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Selection and Transformation: Example 2

# The code below multiplies each element in the collection by 2.
# Can you implement a double_numbers! 
# method that mutates its argument?

def double_numbers!(numbers)
  
  counter = 0

  loop do
    break if counter == numbers.size
    numbers[counter] *= 2
    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]
p my_numbers
double_numbers!(my_numbers)
p my_numbers