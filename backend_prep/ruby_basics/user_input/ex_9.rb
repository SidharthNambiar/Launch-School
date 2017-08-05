# Ruby Basics
# User Input 
# Exercise 9: Launch School Printer (Part 2)

# In an earlier exercise, you wrote a program that prints 'Launch School is the best!' 
# repeatedly until a certain number of lines have been printed. 

puts "This program will print 'Launch School is the best!' repeatedly."
user_response = nil
loop do 
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
  puts "To exit this program, hit q or Q."
  user_response = gets.chomp.downcase
  break if user_response == 'q'
end

# Modify this program so it repeats itself after each input/print iteration, 
# asking for a new number each time through. 
# The program should keep running until the user enters q or Q.