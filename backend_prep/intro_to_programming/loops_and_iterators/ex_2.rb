# Introduction to Programming
# Loops and Iterators
# Exercise 2

# Write a while loop that takes input from the user, performs an action, 
# and only stops when the user types "STOP". 
# Each loop can get info from the user.

user_input = "START"

while user_input != "STOP" do
  puts "Performing action..."
  puts "Enter STOP to terminate the action."
  user_input = gets.chomp
end