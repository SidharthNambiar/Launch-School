# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Selection and Transformation: Example 3

# Exercise for the reader: 
# What if we wanted to transform the numbers 
# based on their position in the array 
# rather than their value?

def double_odd_idices(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number
    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p my_numbers
p double_odd_idices(my_numbers) 