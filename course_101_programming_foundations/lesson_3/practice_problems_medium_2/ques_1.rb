# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Medium 2 - Question 1

# Every named entity in Ruby has an object_id. This is a unique identifier for that object.

# It is often the case that two different things "look the same", but they can be different objects.

# The "under the hood" object referred to by a particular named-variable can change 

# depending on what is done to that named-variable.

# In other words, in Ruby everything is an object...but it is not always THE SAME object.

# Predict how the values and object ids will change throughout the flow of the code below:

def fun_with_ids
  a_outer = 42 # immutable object; object_id is fixed to 85
  b_outer = "forty two" # mutable object; assuming object_id = string_id_num_1
  c_outer = [42] # assuming array object_id = array_id_num_1
  d_outer = c_outer[0] # points to 42; therefore object_id = 85

  a_outer_id = a_outer.object_id  # => 85
  b_outer_id = b_outer.object_id  # => string_id_num_1
  c_outer_id = c_outer.object_id  # => array_id_num_1
  d_outer_id = d_outer.object_id  # => 85

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  # =>  "a_outer is 42 with an id of: 85 before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  # =>  "b_outer is forty two with an id of: string_id_num_1 before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  # =>  "c_outer is [42]  with an id of: array_id_num_1 before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block.\n\n"
  # =>  "d_outer is 42 with an id of: 85 before the block.\n\n"

  1.times do
    a_outer_inner_id = a_outer.object_id  # => 85
    b_outer_inner_id = b_outer.object_id  # => string_id_num_1
    c_outer_inner_id = c_outer.object_id  # => array_id_num_1
    d_outer_inner_id = d_outer.object_id  # => 85

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
    # =>  "a_outer id was #{85} before the block and is: #{85} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    # =>  "b_outer id was #{string_id_num_1} before the block and is: #{string_id_num_1} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    # =>  "c_outer id was #{array_id_num_1} before the block and is: #{array_id_num_1} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block.\n\n"
    # =>  "d_outer id was #{85} before the block and is: #{85} inside the block.\n\n"

    a_outer = 22 # object_id = 45
    b_outer = "thirty three" # assumming obj_id = string_id_num_2
    c_outer = [44] # assumming obj_id = array_id_num_2
    d_outer = c_outer[0] # object_id = 89

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    # =>  "a_outer inside after reassignment is #{22} with an id of: #{85} before and: #{45} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    # =>  "b_outer inside after reassignment is #{thirty three} with an id of: #{string_id_num_1} before and: #{string_id_num_2} after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    # =>  "c_outer inside after reassignment is #{[44]} with an id of: #{array_id_num_1} before and: #{array_id_num_2} after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after.\n\n"
    # =>  "d_outer inside after reassignment is #{44} with an id of: #{85} before and: #{89} after.\n\n"


    a_inner = a_outer # => 22
    b_inner = b_outer # => "thirty three"
    c_inner = c_outer # => [44]
    d_inner = c_inner[0] # => 44

    a_inner_id = a_inner.object_id # object_id = 45
    b_inner_id = b_inner.object_id # object_id = string_num_2
    c_inner_id = c_inner.object_id # object_id = array_num_2
    d_inner_id = d_inner.object_id # object_id = 89

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    # =>  "a_inner is #{22} with an id of: #{45} inside the block (compared to #{45} for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    # =>  "b_inner is #{thirty three} with an id of: #{string_num_2} inside the block (compared to #{string_num_2} for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    # =>  "c_inner is #{[44]} with an id of: #{array_num_2} inside the block (compared to #{array_num_2} for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer).\n\n"
    # =>  "d_inner is #{44} with an id of: #{89} inside the block (compared to #{89} for outer).\n\n"
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  # =>  "a_outer is #{22} with an id of: #{85} BEFORE and: #{45} AFTER the block."

  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  # =>  "b_outer is #{thirty three} with an id of: #{string_num_1} BEFORE and: #{string_num_2} AFTER the block."

  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  # =>  "c_outer is #{[44]} with an id of: #{array_num_1} BEFORE and: #{array_num_2} AFTER the block."

  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block.\n\n"
  # =>  "d_outer is #{44} with an id of: #{85} BEFORE and: #{89} AFTER the block.\n\n"

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block.\n\n" rescue puts "ugh ohhhhh"
end

fun_with_ids