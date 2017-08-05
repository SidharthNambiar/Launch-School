# Ruby Basics
# User Input 
# Exercise 10: Opposites Attract

# Write a program that requests two integers from the user, adds them together, 
# and then displays the result. 
# Furthermore, insist that one of the integers be positive, 
# and one negative; however, the order in which the two integers are entered 
# does not matter.

# Do not check for positive/negative requirement until after both integers are entered, 
# and start over if the requirement is not met.

# You may use the following method to validate input integers:

result = nil
first_number = nil
second_number = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end
puts "Reminder: One of the numbers must be positive, and the other must be negative."

loop do
 
  puts "\nEnter the first number."
  first_number = gets.chomp
   puts "Enter the second number."
  second_number = gets.chomp

  if valid_number?(first_number) && valid_number?(second_number)
    break if first_number.to_i * second_number.to_i < 0  
    puts "One of the numbers be positive, and the other must be negative."
    puts "Try again!"
  else
    puts "Invalid entry! Try again!"
  end

end

result = first_number.to_i + second_number.to_i
puts first_number + " plus " + second_number + " is #{result}."