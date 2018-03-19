# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 5: ASCII String Value

# Write a method that determines and returns the ASCII string value of a string
# that is passed in as an argument. The ASCII string value is the sum of the 
# ASCII values of every character in the string. (You may use String#ord to
# determine the ASCII value of a character.)


def ascii_value(str)
  string_value = 0
  if str.is_a? String 
    str.each_char do |char|
      string_value += char.ord
    end
  else
    puts "Invalid entry!"
  end
  string_value
end



puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# Further Exploration
# There is an Integer method such that:

# char.ord.mystery == char
# where mystery is our mystery method. 
# Can you determine what method name should be used in place of mystery? 
# What happens if you try this with a longer string instead of a single character?