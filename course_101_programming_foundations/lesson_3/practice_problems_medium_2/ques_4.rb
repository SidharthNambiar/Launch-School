# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Medium 2 - Question 4

# To drive that last one home...let's turn the tables 
# and have the string show a modified output, 
# while the array thwarts the method's efforts 
# to modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Answer:
# The code will now display the following:
# => My string looks like this now: pumpkinsrutabaga"
# =>  "My array looks like this now: ["pumpkins"]"

# In this case, a_string_param which is referencing the string object
# pointed to by my_string modifies the original object because the 
# operation performed on it is destructive.
# Although an_array_param initially references the array object
# pointed to by my_array, it gets re-assigned to another array 
# within the method, and therefore gets disconnected with the 
# original array object.