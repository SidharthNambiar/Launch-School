# Ruby Basics
# Return 
# Exercise 9: Counting Sheep (Part 3)

# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep


# Answer: The code prints the following:
# 0
# 1
# 2
# nil
# Within the method count_sheep, the times method iterates 5 times and prints the values 0-2,
# however, once sheep is 2, the if statement evaluates to true and return is explicityly called
# from within the if statement. The loop is exited and the last value returned by the method
# is nil.

