# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: String Assignment

# Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# What does this code print out? Think about it for a moment before continuing.
# Answer: This code prints:
# => Alice
# => Bob
If you said that code printed

Alice
Bob
# you are 100% correct, and the answer should come as no surprise.

# Now, let's look at something a bit different:

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out?
# This prints out the following:
# => BOB
# => BOB

# Can you explain these results?
# In this case, a destructive method is invoked on name,
# which means the original string object ('Bob') gets
# mutated; thereby affecting save_name as well.