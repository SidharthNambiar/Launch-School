# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Easy 2 - Question 7

# In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts "original array: #{flintstones}"
# flintstones << "Dino"

# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)

flintstones.concat(["Dino", "Hoppy"])
puts "Using concat method: #{flintstones}"
flintstones.pop(2)
flintstones.push("Dino", "Hoppy")
puts "Using push method: #{flintstones}"
