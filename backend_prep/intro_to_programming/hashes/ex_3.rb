# Introduction to Programming
# Hashes
# Exercise 3

# Using some of Ruby's built-in Hash methods, 
# write a program that loops through a hash and prints all of the keys. 
# Then write a program that does the same thing except printing the values. 
# Finally, write a program that prints both.


animal_sounds = {cat: "meow", dog: "bark", cow: "moo", lion: "roar"}

animal_sounds.each {|k,v| puts k}
animal_sounds.each {|k,v| puts v}
animal_sounds.each {|k,v| puts "#{k} => #{v}"}