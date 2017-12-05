# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Example 6

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

# Breakdown
# The #select method is invoked on an array made up of hashes.
# The first element, i.e. hash, is passed to select, { a: 'ant', b: 'elephant' }
# and is assigned the variable hash.
#   The #all? method is then invoked on hash.
#   The first key-value pair is passed to #all?, and a: is assigned the variable
#   key, and 'ant' is assigned the variable value.
#   Next, a boolean conditional check is implemented.
#   value[0] which results in 'a' is checked to see if its equal to
#   :a, which gets converted to a string, resulting in 'a'.
#   In this case 'a' is equal to 'a', therefore the result is true.
#   The boolean result is returned to #all?.
#   The second key-value pair is passed to #all?, and b: is assigned the variable
#   key, and 'elephant' is assigned the variable value.
#   value[0] which results in 'e' is checked to see if its equal to
#   :b, which gets converted to a string, resulting in 'b'.
#   In this case, 'e' doesn't equal to 'b', thereby resulting in false.
#   False is returned to #all?, therefore  #all? returns false to
#   #select.
# The second element, i.e. hash, is passed to select, { c: 'cat' }
# and is assigned the variable hash.
#   The #all? method is then invoked on hash.
#   The first key-value pair is passed to #all?, and c: is assigned the variable
#   key, and 'cat' is assigned the variable value.
#   Next, a boolean conditional check is implemented.
#   value[0] which results in 'c' is checked to see if its equal to
#   :c, which gets converted to a string, resulting in 'c'.
#   In this case 'c' is equal to 'c', therefore the result is true.
#   The boolean result is returned to #all?.
#   #all? returns true to #select.
# #select creates a new array with { c: 'cat' }, resulting in
# => [c: 'cat']
