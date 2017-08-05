# Ruby Basics
# Loop 2
# Exercise 6: Empty the Array

# Given the array below, use loop to remove and print each name. 
# Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

# Keep in mind to only use loop, not while, until, etc.

puts "\nPrinting Sally to Henry:"

loop  do
  puts names.delete_at(0) # or use names.shift
  break if names.empty?
end

# Further Exploration

puts "\nPrinting Henry to Sally."

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop  do
  puts names.pop
  break if names.empty?
end