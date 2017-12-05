# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Example 1

[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end

# So what's happening in this, seemingly simple, piece of code?
# Take it apart and try to describe every interaction with precision.

# Answer:
# The #each method is invoked on a nested array.
# The #each method iterates through each element in the nested array.
# The first element ([1,2]) is assigned the variable arr.
# The #puts method prints to the screen the value returned by invoking
# the #first method on arr ([1,2]), and in this case 1 is returned to
# puts method, which then prints it to the screen and returns nil.
# Finally the second/last element is now assigned arr, and just like before,
# arr.first returns 3 to puts, which then prints the value to the screen and
# returns nil.
# After the each method comletes iterating through the collection, it
# returns the original array.
