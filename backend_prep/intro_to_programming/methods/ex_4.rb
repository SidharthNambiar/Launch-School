# Introduction to Programming
# Methods
# Exercise 4

# What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# Answer: Nothing gets printed to the screen.

# The method 'scream is called, and 'Yippeee' is passed to it.
# 'Yippeee' is then assigned to a variable called 'words' whose scope is limited to within the method.
# 'Yippeee' is then concatenated with '!!!!'
# The method then returns "Yippeee!!!!"
# The last line in the method isn't executed.
# Nothing gets printed to the screen.