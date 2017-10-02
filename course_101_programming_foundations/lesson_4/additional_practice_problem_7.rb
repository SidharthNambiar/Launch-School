# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Additional Practice - Practice Problem 7

# Create a hash that expresses the frequency 
# with which each letter occurs in this string:

statement = "The Flintstones Rock"

# ex:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
puts "Method 1"
char_freq = {}
statement = statement.split.join.chars
keys = statement.uniq
keys.each do |char|
  char_freq[char] = statement.count(char)
end

puts char_freq

puts "Method 2"

statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  count = statement.scan(letter).count
  result[letter] = count if count > 0
end

puts result