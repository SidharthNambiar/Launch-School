# Ruby Basics
# Strings 
# Exercise 10: Are You There?

# Using the following code, print true if colors includes 
# the color 'yellow' and print false if it doesn't. 
# Then, print true if colors includes the color 'purple' 
# and print false if it doesn't.

colors = 'blue pink yellow orange'

puts colors.include?("yellow")
puts colors.include?("purple")

# Further Exploration

# Let's say color is changed to the following value:

colors = 'blue boredom yellow'

# and we invoke #include? as we did before:

puts colors.include?('red')

# What will the output be? Why?
# Asnwer: The output will be true because the string colors contains the characters 'red' within it (inside boredom).
# Your'e better off compartmentalizing the contents of the string into elements of an array as such:
puts colors.split(" ").include?('red')