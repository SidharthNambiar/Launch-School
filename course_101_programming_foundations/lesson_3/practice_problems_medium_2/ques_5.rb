# 101 Programming Foundations
# Lesson 3: Practice Problem
# Practice Problems: Medium 2 - Question 5

# How could the unnecessary duplication in this method be removed?

def color_valid(color)
  color == "blue" || color == "green"  
end

puts color_valid("blue")
puts color_valid("red")
puts color_valid("green")