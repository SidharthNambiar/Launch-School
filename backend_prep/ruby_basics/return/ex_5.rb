# Ruby Basics
# Return 
# Exercise 5: Breakfast, Lunch, or Dinner? (Part 5)

# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# Answer: The code will print:
# Dinner
# nil
# Within the method, puts prints Dinner to the screen, and outside the method
# puts prints the returned value of the last expression, which is nil (returned by puts.)
