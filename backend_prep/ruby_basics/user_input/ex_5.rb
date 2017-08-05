# Ruby Basics
# User Input 
# Exercise 5: Launch School Printer (Part 1)

# Write a program that prints 'Launch School is the best!' 
# repeatedly until a certain number of lines have been printed. 
# The program should obtain the number of lines from the user, 
# and should insist that at least 3 lines are printed.

# For now, just use #to_i to convert the input value to an Integer, 
# and check that result instead of trying to insist on a valid number; 
# validation of numeric input is a topic with a fair number of edge conditions 
# that are beyond the scope of this exercise.

puts "This program will print 'Launch School is the best!' repeatedly."
number_of_lines = nil
loop do
  puts "How many times would you like to print 'Launch School is the best!'? (3 lines minimum)"
  number_of_lines = gets.chomp.to_i

  if number_of_lines > 2
    number_of_lines.times {puts "Launch School is the best!"}
    break
  else
    puts "You must print 3 or more times."
    puts "Please try again."
  end
end