# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Example 7

arr = [['1', '8', '11'], ['2', '6', '13'],
       ['2', '12', '15'], ['1', '8', '9']]

arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end

# So what is happening here?
# #sort_by is invoked on arr.
# The first element, ['1', '8', '11'], is assigned sub_arr.
# #map is then invoked on sub_arr.
# The first element, 1, is assigned num.
# 1 is converted to an integer.
# #map creates a new array, with 1 as an integer as the first element.
# Subsequently, the remaining elements are passed in, and results
# in the following array: [1,8,11]
# [1,8,11] is returned to #sort_by
# Subsequently, the remaining elements in arr, get passed in and result in
# #map creating new arrays where the numeric strings are now converted to
# integers.
# This allows for sort_by to compare the arrays containing integers against each
# other.
