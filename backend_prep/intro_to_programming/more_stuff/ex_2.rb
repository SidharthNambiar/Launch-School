# Introduction to Programming
# More Stuff
# Exercise 2

# 1. What will the following program print to the screen? 
# 2. What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# Answer (as per Launch School)

# 1. The block is never activated with the .call method and therefore nothing gets printed to the screen.
# 2. A proc is returned: => #<Proc:0x000000009a8710@(irb):5>


