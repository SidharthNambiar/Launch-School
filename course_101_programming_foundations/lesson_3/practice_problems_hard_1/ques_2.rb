# 101 Programming Foundations
# Lesson 3: Practice Problem
# Practice Problems: Hard 1 - Question 2

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a] # 'hi' is returned and assigned to informal greeting
informal_greeting << ' there' # "hi" gets appended with ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => { a: 'hi there' }

# Answer:
# => { a: => 'hi there' }