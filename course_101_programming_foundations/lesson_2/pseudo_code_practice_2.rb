# 101 Programming Foundations
# Lesson 2: Small Programs
# Pseudo Code Practice: 
# a method that takes an array of strings, 
# and returns a string that is all those strings concatenated together

/
  Given: array of strings. Example: ["hello", "world"]

  - Declare and instantiate an empty string.

  - Iterate through the collection one by one.
    - append each element to empty string
    - if needed also append a space

  - print final string

  PSEUDO CODE 

  # Given: array of strings. Example: ["hello", "world"]

  SET concatenated_string = ''
  SET count = 0

  while count < array.length
    concatenated_string << array[count] << " "
    count += 1

  PRINT concatenated_string
/

array = ["I", "live", "in", "Japan"]

concatenated_string = ''
count = 0

while count < array.length
  concatenated_string << array[count] << " "
  count += 1
end

puts concatenated_string