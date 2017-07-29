# Introduction to Programming
# More Stuff
# Exercise 5

# Why does the following code...

def execute(&block) # fixed error
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# The parameter for the method execute is missing an ampersand (&).
# When passing a block to a method, an & must be used.