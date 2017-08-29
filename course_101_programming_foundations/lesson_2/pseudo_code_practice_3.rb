# 101 Programming Foundations
# Lesson 2: Small Programs
# Pseudo Code Practice: 
# a method that takes an array of integers,
# and returns a new array with every other element

=begin
  Given an array of integers. Example: [2,3,5,2,6,7,5,3,22]

  - Define an empty array

  - Iterate through each element in the array
      - put every other element in the empty array

  - Return array

  - Print the new array


 PSEUDO CODE

 START

 # Given an array of integers. 

 arr = [1,2,3,4,5,6,7,8,9]

 SET new_array = []
 SET count = 0

 WHILE count < length of arr 
  - if index is even 
      put element in new_array
  - else
      move to the next element

  - count += 1

  return new_array

  PRINT new_array

  END
=end

 arr = (1..20).to_a

 def every_other(array)
  new_array =[]
  count = 0

  while count < array.length
    if count%2 == 0
      new_array << array[count]
      count += 1
    else
      count += 1
    end
  end
  new_array
 end

 p every_other(arr)
