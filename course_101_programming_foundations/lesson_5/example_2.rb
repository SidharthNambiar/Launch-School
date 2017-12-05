# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Example 2

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end

# What's happening here?

# Answer:
# The method 'map' is invoked on a nested array.
# The first element in the nested array, [1,2], is
# assigned to variable arr.
# The puts method prints the return value of arr.first, which is
# 1, to the screen.
# puts returns nil to the map method, and map creates a new array
# containing the returned value [nil].
# Now the second element in the nested array is handled, and like before,
# arr.first returns 3 to puts, which then prints it tou the screen.
# Finally puts returns nil to map, and map adds it to the new array
# it created, [nil, nil]
# The final return value by map is [nil, nil]
