# Ruby Basics
# Loop 1
# Exercise 3: Control the Loop

# Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do

  puts "Number of iterations = #{iterations}"
  # further exploration
  # break if iterations > 4 
  iterations += 1
  break if iterations > 5
  
end