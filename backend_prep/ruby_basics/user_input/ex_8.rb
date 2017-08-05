# Ruby Basics
# User Input 
# Exercise 8: Dividing Numbers

# Write a program that obtains two Integers from the user,
# then prints the results of dividing the first by the second. 
# The second number must not be 0, and both numbers should be 
# validated using this method:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

# This method returns true if the input string can be converted to an Integer 
# and back to a string without loss of information, false otherwise. 
# It's not a perfect solution in that some inputs that are otherwise valid 
# (such as 003) will fail, but it is sufficient for this exercise.

result = nil
second_number = nil
first_number = nil

loop do
  puts "Please enter the first number."
  first_number = gets.chomp
  puts "Please enter the second number."
  second_number = gets.chomp

  if valid_number?(first_number) && valid_number?(second_number)   
   break if second_number != '0'
    puts "Cant divide by zero. Try again!"
  else
    puts "Invalid number(s)." "Try again!"
  end
end

result = first_number.to_i / second_number.to_i

puts "#{first_number} divided by #{second_number} is #{result} "




