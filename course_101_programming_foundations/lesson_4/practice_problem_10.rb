# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Methods and More Methods - Practice Problem 10

# What is the block's return value in the following code? 
# Answer:
# => [1, nil, nil]

# Why?
# Answer:
# For any element in the array that's greater than 1,
# NIL is returned to the map method, otherwise the element
# itself is returned. 
# In this case, the first iteration passes in 1 to the block,
# and therefore 1 is returned to map. Subsequent iterations return
# NIL to the map method since the puts method returns NIL.
# Finally the map method stores all the returend values in an array
# and returns it after the final iteration.


[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end