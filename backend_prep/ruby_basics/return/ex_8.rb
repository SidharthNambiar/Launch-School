# Ruby Basics
# Return 
# Exercise 8: Counting Sheep (Part 2)

# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep


# Answer: The code prints the following:
# 0
# 1
# 2
# 3
# 4
# 10
# Within the method count_sheep, the times method iterates 5 times and prints the values 0-4,
# however, since 10 is the last expression to be evaluated, it returns 10 to the puts outside
# the method.