# Ruby Basics
# Loop 2
# Exercise 8: Only Even

# Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  next if number%2 != 0 # or use number.odd?
  puts number
 
  
end

# Further Exploration

# Why did next have to be placed after the incrementation of number and before #puts?

# Answer: 

# 'next' must be placed after the incrementation to avoid an infinite loop. 
# Without it, the loop would remain at the same odd value until the user hits CTRL + C

# In addition 'next' must be placed before 'puts' so the odd numbers do not get printed on screen.
