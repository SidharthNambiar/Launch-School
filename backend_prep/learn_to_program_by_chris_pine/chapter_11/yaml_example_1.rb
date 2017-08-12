# Learn To Program
# Chapter 11 : Reading and Writing, Saving and Loading...
# YAML example 1

require 'yaml'

test_array = ['Give Quiche A Chance', 'Mutants Out!', 'Chameleonic Life-Forms, No Thanks']


# array to string
test_string = test_array.to_yaml              

filename = "RimmerTShirts.txt"              

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

# string to array
read_array = YAML::load read_string

puts(read_string == test_string)
puts(read_array == test_array)