# Ruby Basics
# Hashes
# Exercise 5: Labeled Numbers

# Use Hash#each to iterate over numbers and print each element's key/value pair.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each {|key, value| puts "A #{key} number is #{value}."}