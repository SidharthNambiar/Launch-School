# Ruby Basics
# Return 
# Exercise 4: Breakfast, Lunch, or Dinner? (Part 4)

# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

#Answer: The cooe will print:
# Dinner
# Breakfast
# Within the method puts prints Dinner to the screen, and then outside of the method
# puts prints the last line evaluated by the method, which is Breakfast.