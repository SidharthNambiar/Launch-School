# Ruby Basics
# Return 
# Exercise 7: Counting Sheep (Part 1)

# What will the following code print? Why?
# Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# Answer: The code prints the following:
# 0
# 1
# 2
# 3
# 4
# 5
# Within the method count_sheep, the times method iterates 5 times and prints the values 0-4,
# however, since times is the last expression to be evaluated, it returns 5 (the object times was 
# invoked on) to the puts outside the method.