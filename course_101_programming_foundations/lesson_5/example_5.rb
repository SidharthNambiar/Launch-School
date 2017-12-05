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
# #map is invoked on a nested array.
# The first element in the nested array is assigned to
# arr.
#   Inside the main block, #map is invoked on arr.
#   The first element in arr, 1, is assigned to num.
#   num is then multiplied by 2, resulting in 2.
#   The value 2 is returned to map, which then creates a new array
#   containing the value 2.
#   The second element in arr, 2, is assigned to num.
#   num is then multiplied by 2, resulting in 4.
#   The value 4 is then added to the new array, [2,4]
#   [2,4] is returned to the #map in the main block, which
#   then creates a new array containing the array, [[2,4]].
# The second element in the nested array is assigned to arr.
#   Inside the main block, #map is invoked on arr.
#   The first elment in arr, 3, is assigned to num.
#   num is then multiplied by 2, resulting in 6.
#   The value 6 is returned to #map, which then creates a new array
#   containing the value 6.
#   The second element in arr, 4, is assigned to num.
#   num is then multiplied by 2, resulting in 8.
#   The value 8 is then added to the new array, [6, 8].
# [6,8] is returned to the main block, where #map adds it to the nested
# array, resulting in [[2,4], [6,8]]
# => [[2,4], [6,8]]
