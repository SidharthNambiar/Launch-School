# Ruby Basics
# User Input 
# Exercise 7: User Name and Password

# In the previous exercise, you wrote a program to solicit a password.
# In this exercise, you should modify the program so it also requires a user name. 
# The program should solicit both the user name and the password, then validate both, 
# and issue a generic error message if one or both are incorrect; 
# the error message should not tell the user which item is incorrect.

USERNAME = "monkey"
PASSWORD = "apple"

welcome_message = "Welcome to the world of Ruby!"



loop do 
  puts "Please enter your username:"
  username_answer = gets.chomp
  puts "Please enter the password:"
  password_answer = gets.chomp
  if (username_answer == USERNAME) && (password_answer == PASSWORD)
    puts welcome_message
    break
  else
    puts "Incorrect login credentials. Try again!"
  end
end