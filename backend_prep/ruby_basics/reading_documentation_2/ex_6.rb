# Ruby Basics
# Ruby Documentation 2
# Exercise 6: Multiple Signatures

# What do each of these puts statements output?

a = %w(a b c d e)

puts a.fetch(7)

# Answer: Index only goes up to 4; therefore IndexError exception thrown
# IndexError: index 7 outside of array bounds: -5...5



puts a.fetch(7, 'beats me')

# Answer: Default value 'beat me'

puts a.fetch(7) { |index| index**2 }

# Answer: Since an invalid index is referenced, the block is executed.
# 49
