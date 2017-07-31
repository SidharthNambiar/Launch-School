# Ruby Basics
# Ruby Documentation 2
# Exercise 3: Optional Arguments

# Assume you have the following code:

# What will each of the 3 puts statements print?

s = 'abc def ghi,jkl mno pqr,stu vwx yz'

puts s.split.inspect

# Answer: pattern and limit are omitted, therefor pattern is ni; string is split on whitespace
# ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]

puts s.split(',').inspect

# Answer: The comma is the pattern
# ["abc def ghi" "jkl mno pqr" "stu vwx yz"]

puts s.split(',', 2).inspect

# Answer: The comma is the pattern and the limit is set to 2. Only 2 fields will returned.
# ["abc def ghi", "jkl mno pqr,stu vwx yz"]


