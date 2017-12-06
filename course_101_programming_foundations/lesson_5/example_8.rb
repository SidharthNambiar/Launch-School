# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Example 8

[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end

# Breakdown

# #map is invoked on a nested array.
# The first element in the nested array is passed in
# and is assigned arr.
#  #select is then invoked on arr.
#   The first element in arr, 8, is assigned as item.
#   Since 8 is an integer and is less than 13,
#   false is returned to select.
#   The next element in arr, 13, is assigned as item.
#   Again, false is returned to select since item is not greater than
#   13.
#   The next element, 27, is assigned as item.
#   Since 27 is greater than 13, true is returned to select.
#   #select creates a new array with integer 27 in it, [27]
#   This new array is passed to #map.
#   #map creates a new array, storing [27] in it, [[27]].
# The second element is passed in and is assigned arr.
# #select is then invoked on arr.
# The first element in arr, 'apple', is assigned as item.
# item fails to meet the first if condition since it's not an integet.
# Since the size of the item is less than 6, true is returned to #select.
# #select creates a new array with 'apple' in it, ['apple'].
# The next element in arr, 'banana', is assigned as item.
# Since the size of 'banana' is not less than 6, false is returned to #select.
# The next element, 'cantaloupe', is assigned as item.
# Again, the size of the item isn't less than 6, so false is returned to #select.
# #select returns the array it created, containing 'apple', to #map.
# => ["apple"]
# #map adds this return value to the existing array it created before.
# => [[27],["apple"]]
