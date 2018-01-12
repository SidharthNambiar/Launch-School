# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 7

# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
puts "Object id of 'a' is #{a.object_id}"
b = [5, 8]
puts "Object id of 'b' is #{b.object_id}"
arr = [a, b]
puts "Object id of 'arr' is #{arr.object_id}"


arr[0] += 2
puts "Object id of 'arr[0]' is #{arr[0].object_id}"
arr[1][0] -= a
puts "Object id of 'arr[1][0]' is #{arr[1][0].object_id}"

# Answer
# => a is 2
# => b is [3,8]