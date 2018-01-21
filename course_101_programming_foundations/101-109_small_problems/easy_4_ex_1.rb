# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 4: Exercise 1: Short Long Short

# Write a method that takes two strings as arguments, determines
# the longest of the two strings, and then returns the result of 
# concatenating the shorter string, the longer string, and the shorter
# string, and the shorter stirng once again. You may assume that the strings 
# are of different lengths



def short_long_short(str1, str2)
	if str1.length < str2.length
		str1 + str2 + str1
	else
		str2 + str1 + str2
	end
	
end




# Examples:


puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('','xyz') == "xyz"

