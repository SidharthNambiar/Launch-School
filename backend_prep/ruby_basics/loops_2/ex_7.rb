# Ruby Basics
# Loop 2
# Exercise 7: Stop Counting

# The method below counts from 0 to 4. 
# Modify the block so that it prints the current number and 
# stops iterating when the current number equals 2.

5.times do |index|
  puts index
  break if index == 2
end

# Further Exploration

# Without running this code, how many values will be printed?


5.times do |index|
  puts index
  break if index == 4
end

# Answer: 5 --> [0,1,2,3,4]

# Now, consider this code:

5.times do |index|
  puts index
  break if index < 7
end

# How many values will be printed this time?

# Answer: 1 --> [0]