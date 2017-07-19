# Introduction to Programming
# Loops and Iterators
# Example 14 (doubler.rb)

# Let's say you wanted to double the number until the pre-doubled number is 10 or greater. 

def doubler(number)
  if number < 10
    doubler(number*2)
  else
    number
  end

end

puts doubler(3)