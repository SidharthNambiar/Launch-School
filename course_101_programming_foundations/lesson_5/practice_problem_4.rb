# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 4

# For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.

arr1 = [1, [2, 3], 4]

puts "Array 1 before: #{arr1}"
arr1[1][1] = 4
puts "Array 1 after: #{arr1}"

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

puts "\nArray 2 before: #{arr2}"
arr2[2] = 4
puts "Array 2 after: #{arr2}"

hsh1 = {first: [1, 2, [3]]}


puts "\nHash 1 before: #{hsh1}"
hsh1[:first][2][0] = 4
puts "Hash 1 after: #{hsh1}"

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

puts "\nHash 2 before: #{hsh2}"
hsh2[['a']][:a][2] = 4
puts "Hash 2 after: #{hsh2}"