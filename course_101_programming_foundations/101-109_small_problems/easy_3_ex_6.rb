# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 3: Exclusive Or

# The || operator returns a truthy value if either 
# or both of its operands are truthy, a falsey value 
# if both operands are falsey. The && operator returns 
# a truthy value if both of its operands are truthy, 
# and a falsey value if either operand is falsey. 
# This works great until you need only one of two conditions to be truthy,
# the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, 
# and returns true if exactly one of its arguments is truthy, false otherwise.

def xor?(arg1, arg2)
  arr = [!arg1, !arg2]
  return true if arr == arr.uniq
  false
end

# Launch School solution
def xor_method_2?(arg1, arg2)
  (arg1 && !arg2) || (!arg1 && arg2)
end

puts "Using Method 1: "

puts xor?(true, true) # => false
puts xor?(false, true)  # => true
puts xor?(5.even?, 4.even?) == true # => true
puts xor?(5.odd?, 4.odd?) == true # => true
puts xor?(5.odd?, 4.even?) == false # => true
puts xor?(5.even?, 4.odd?) == false # => true
puts xor?("hello", :world)  # => false
puts xor?("foobar", false)  # => true
puts xor?(nil, :foobar) # => true
puts xor?(34, nil)  # => true
puts xor?(2.3, 343) # => false

puts "\nUsing Method 2:"

puts xor_method_2?(true, true) # => false
puts xor_method_2?(false, true)  # => true
puts xor_method_2?(5.even?, 4.even?) == true # => true
puts xor_method_2?(5.odd?, 4.odd?) == true # => true
puts xor_method_2?(5.odd?, 4.even?) == false # => true
puts xor_method_2?(5.even?, 4.odd?) == false # => true
puts xor_method_2?("hello", :world)  # => false
puts xor_method_2?("foobar", false)  # => true
puts xor_method_2?(nil, :foobar) # => true
puts xor_method_2?(34, nil)  # => true
puts xor_method_2?(2.3, 343) # => false

# Note: The Launch School solution works as long as the argument
# being passed into xor_method_2 isn't of type symbol.
# However, the original method handles symbols as well.



# Further Exploration

# Can you think of a situation in which a boolean xor method would be useful? 

# Does the xor method perform short-circuit evaluation of its operands?
# No
# Why or why not?
# The reason being that xor relies on the fact that the boolean
# value of both operands must be different in order to be true.
# Therefore both operands must be verfied before making a conclusion.

# Does short-circuit evaluation in xor operations even make sense?
# No, I don't think it makes sense.

