# Introduction to Programming
# Arrays
# Exercise 6

# You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
puts "Original array: #{names}"
# original implementation
# names['margaret'] = 'jody' 

#resolved version
names[3] = 'jody'
puts "\nUpdated array: #{names}"

# ...and get the following error message:

# TypeError: no implicit conversion of String into Integer
#  from (irb):2:in `[]='
#  from (irb):2
#  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

# What is the problem and how can it be fixed?

# The problem is that the original code is attempting to replace 'margaret' with 'jody' incorrectly.
# To replace 'margaret' with 'jody', the index number should be used instead of the value. See above.