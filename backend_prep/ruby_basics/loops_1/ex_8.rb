# Ruby Basics
# Loop 1
# Exercise 8: Print Until

# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]
count = 0


until count == numbers.size
  puts "#{numbers[count]}"
  count += 1
end

=begin
method 1: Modifies the array permanently
until numbers.size == 0
  puts "#{numbers[count]}"
  numbers.delete_at(count)  
end
=end

