# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Example 4


my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# Can you take this code apart, just like before?
# Answer:
# my_arr is assigned return value of #each invoked on a nested array.
# The first element in the nested array is passed to #each, and is assigned
# arr.
#   #each is now invoked on arr ([18, 7])
#   The first element in the array, 18, is assigned to num.
#   Since 18 is greater than 5, it is printed on the screen and nil is returned.
#   The second element in the array, 7, is now assigned to num.
#   Since 7 is greater than 5, it is printed on the screen and nil is returned.
#   After the final iteration, arr.each returns the original array, [18, 7].
# The second element in the nested array is passed to #each, and is assigned
# arr.
#   #each is now invoked on arr ([3,12])
#   The first element in the array, 3, is assigned to num.
#   Sinc 3 is not greater than 5, it fails to meet the if condition.
#   Therefore nothing is printed to the screen.
#   The second element in the array, 12, is is now assigned to num.
#   Since 12 is greater than 5, it is printed to the screen and nil is returned.
#   arr.each returns the original array, [3,12].
# The main block returns the original nested array, which is then assigned to
# my_arr.

# What will be output and what will be the value of my_arr?
# my_arr
# => [[18, 7], [3, 12]]
