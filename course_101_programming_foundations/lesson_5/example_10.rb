# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Example 10

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

# Breakdown

# map is invoked on a 3 dimensional nested array.
# The first element, [[1, 2], [3, 4]], is assigned as arr.
# #map is invoked on arr.
# => The first element, [1, 2], is assigned as el.
# => The first conditional check fails because el isn't an integer.
# => #map is invoked on el.
# =>  The first element, 1, is assigned as n.
# =>  n is incremented by 1, resulting in 2.
# =>  #map creates a new array with 2 stored in it.
# =>  The second element, 2, is assigned as n.
# =>  n is incremented by 1, resulting in 3.
# =>  #map adds this to the newly created array.
# =>  [2,3] is returned to the second #map call.
# => #map creates a new array, with [2,3] in it, [[2,3]]
# => The second element, [3,4], is assigned as el.
# =>  Since the first conditional check fails, #map is invoked on [3,4].
# =>  The values in the array are incremented and #map creates
# =>  a new array with the incremented values, [4,5]
# => #map adds [4,5] to the array it created earlier.
# => [[2,3],[4,5]] is returned to the main #map
# #map creates a new array, with [[[2,3],[4,5]]] inside it.
# The second element, [5, 6], is assigned as arr.
# #map is invoked on arr.
# => The firs element, 5, is assigned as el.
# => Since the first conditional check is satisfied, 5 is incremented to 6.
# => #map creates a new array, with 6 in it, [6]
# => The second element, 6, is assigned as el and is incremented.
# => #map appends 7 to the array it created, resulting in [6,7]
# => #map returns [6,7] to the main #map, which adds the array to the
# => existing array.
# => Finally, #map returns the following:
# => [[[2,3],[4,5]],[6,7]] 
