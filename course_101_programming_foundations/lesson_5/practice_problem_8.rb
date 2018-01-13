# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 8

# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = ['a', 'e', 'i', 'o', 'u']	# Launch School solution used string ('aeiou') instead of an array as a look up table


hsh.each do |_, arr| 
	arr.join.chars.each do |char|
		puts char if vowels.include?(char)
	end
end
