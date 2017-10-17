# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: Mutation

# What will the following code print, and why?

# Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# an array of string objects is created containing the above names

array2 = []
# an empty array is initialized

array1.each { |value| array2 << value }
# The each method iterates through array1, and for every iteration,
# the value is pushed into array2.

array2 = (array1.join(" ")).split(" ")
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# array1 = ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppo")

p array2
p array1
# => "Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppo"

# During the initial each invocation on array1, the block passes in the 
# references for each object to array2; therefore, any changes made to 
# string objects in array1, will in turn show up in array2 as well.

# Further Exploration

# How can this feature of ruby get you in trouble?
# This can lead to unexpected results.

# How can you avoid it?
# One option is to use the join method with a delimiter, and then
# assign array2 the split string using the same delimiter.
# => array2 = (array1.join(" ")).split(" ")