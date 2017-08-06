# Ruby Basics
# Conditionals 
# Exercise 6: Stoplight (Part 1)

# In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.

stoplight = ['green', 'yellow', 'red'].sample

# Write a case statement that prints 
# "Go!" if stoplight equals 'green',
# "Slow down!" if stoplight equals 'yellow', and 
# "Stop!" if stoplight equals 'red'.

case stoplight
when 'green' then puts "Go!"
when 'yellow' then puts "Slow down!"
else puts "Stop!"
end