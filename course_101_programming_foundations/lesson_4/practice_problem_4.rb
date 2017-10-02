# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Methods and More Methods - Practice Problem 4

# What is the return value of each_with_object in the 
# following code? Why?

# Answer:
# The return value is the hash object that passed in as an 
# argument to each_with_object.
# After iterating over the collection, the populated hash
# is returned by the method.
# {"a"=>"ant", "b"=>"bear", "c"=>"cat"}
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

