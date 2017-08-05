# Ruby Basics
# User Input 
# Exercise 6: Passwords

# Write a program that displays a welcome message,
# but only after the user enters the correct password, 
# where the password is a string that is defined as a constant in your program.
# Keep asking for the password until the user enters the correct password.

MY_PASSWORD = "monkeycat"

welcome_message = "Welcome to the world of Ruby!"

user_input = nil

loop do 
  puts "Please enter the password:"
  user_input = gets.chomp
  if user_input == MY_PASSWORD
    puts welcome_message
    break
  else
    puts "Wrong password. Try again!"
  end
end


