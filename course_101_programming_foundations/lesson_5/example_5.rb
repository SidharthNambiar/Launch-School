# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Example 5

# Next, let's tackle a slightly more complex example.

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# What will the return value be in this example? \
# Answer:
#
