# Ruby Basics
# Ruby Documentation 2
# Exercise 4: Optional Arguments Redux

# Assume you have the following code:

# What will each of the 4 puts statements print?

require 'date'

puts Date.new

# Answer: -4712-01-01

puts Date.new(2016)

# Answer: 2016-01-01

puts Date.new(2016, 5)


# Answer: 2016-05-01

puts Date.new(2016, 5, 13)


# Answer: 2016-05-13

# source: https://ruby-doc.org/stdlib-2.3.1/libdoc/date/rdoc/Date.html#method-c-new
