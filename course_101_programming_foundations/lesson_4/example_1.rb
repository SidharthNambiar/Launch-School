# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Selection and Transformation: Example 1

# Let's now take a look at an example with hashes.
# In this example we want to select the key-value pairs 
# where the value is 'Fruit'.

# How would you implement a method like this?

def select_fruit(prod)
  keys = prod.keys
  counter = 0
  fruits = {}
  key_term = "Fruit"
  loop do
    break if counter > keys.size
    if prod[keys[counter]] == key_term
      fruits[keys[counter]] = key_term
    end
    counter += 1
  end
  puts fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}



select_fruit(produce)

