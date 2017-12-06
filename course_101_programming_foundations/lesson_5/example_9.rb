# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Example 9

[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end

# Breakdown

# #map is invoked on a 3 dimensional nested array
# element1 is assigned the first element, [[1], [2], [3], [4]], a 2-D array.
# => #each is invoked on element1.
# => the first element, [1], is assigned as element2.
# => #partition is then invoked on element2, [1]
# =>  1 is assigned as element3
# =>  1 is greater than 0, so true is returned to #partition.
# =>  #partition returns [[1],[]] to #each
# => #each returns the original array, element1, to map.
# => [[1], [2], [3], [4]]
# #map creates a new array [[[1], [2], [3], [4]]]
# Sinc #each will alway return the orignal array, during the second
# iteration, it will return [['a'], ['b'], ['c']] to #map.
# Finally #map will return the following:
# => [[[1], [2], [3], [4]],[['a'], ['b'], ['c']]]
