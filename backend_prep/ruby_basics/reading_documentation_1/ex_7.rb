# Ruby Basics
# Ruby Documentation 1
# Exercise 7: Default Arguments in the Middle

# Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Use the ruby documentation to determine what this code will print.

# Answer: This code will print [4,5,3,6]


# source: http://ruby-doc.org/core-2.3.1/doc/syntax/methods_rdoc.html