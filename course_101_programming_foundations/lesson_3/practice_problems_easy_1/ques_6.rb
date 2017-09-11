# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Easy 1 - Question 6

# Starting with the string:

famous_words = "seven years ago..."
string_to_prepend = "Four score and "

# show two different ways to put the expected "Four score and " in front of it.

# Implementation 1

complete_string_num_1 = string_to_prepend + famous_words
puts complete_string_num_1

# Implementation 2

complete_string_num_2 = string_to_prepend << famous_words
puts complete_string_num_2

famous_words = "seven years ago..."
string_to_prepend = "Four score and "

# Implementation 3

complete_string_num_3 = famous_words.prepend(string_to_prepend)
puts complete_string_num_3

