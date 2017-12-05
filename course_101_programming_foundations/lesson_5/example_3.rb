# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Example 3

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end


# What's happening here?

# Answer:
# #map is invoked on a nested array.
# The first element of the nested array is passed to #map
# which then assigns it the variable arr.
# arr.first returns 1 to #puts, which then prints it to the screen
# and returns nil.
# The second line returns 1 to #map, which then creates a new array
# and then stores it.
# The second element in the nested array is then passed to #map, and
# arr.first returns 3 to #puts, which then prints it to the screen, and
# returns nil.
# arr.first returns 3 to map, which then adds it to the new array it created.
# Finally #map returns [1,3]
