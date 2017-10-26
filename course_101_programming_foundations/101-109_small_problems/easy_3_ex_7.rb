# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 3: Odd Lists

# Write a method that returns an Array that contains every other element 
# of an Array that is passed in as an argument. 
# The values in the returned list should be those values 
# that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Further Exploration

# Write a companion method that returns the 2nd, 4th, 6th, 
# and so on elements of an array.

# Try to solve this exercise in at least 2 additional ways.

def oddities_method_1(arr)
  new_arr = []
  arr.each_with_index do |item, ind|
    new_arr << item if ind.even?
  end
  new_arr
end

def evens_method_1(arr)
  new_arr = []
  arr.each_with_index do |item, ind|
    new_arr << item if ind.odd?
  end
  new_arr
end

def oddities_method_2(arr)
  new_arr = []
  count = 0
  while count < arr.size
    new_arr << arr[count]
    count += 2
  end
  new_arr
end

def evens_method_2(arr)
  new_arr = []
  count = 1
  while count < arr.size
    new_arr << arr[count]
    count += 2
  end
  new_arr
end


def oddities_method_3(arr)
  arr.select {|item| arr.find_index(item).even?}
  
end

def evens_method_3(arr)
  arr.select {|item| arr.find_index(item).odd?}  
end

puts "Using Method 1:"
puts oddities_method_1([2, 3, 4, 5, 6, 7, 8, 9, 10]) == [2, 4, 6, 8, 10]
puts oddities_method_1(['abc', 'def','ghi', 'jkl']) == ['abc', 'ghi']
puts oddities_method_1([123]) == [123]
puts oddities_method_1([]) == []
puts evens_method_1([2, 3, 4, 5, 6, 7, 8, 9, 10]) == [3, 5, 7, 9]
puts evens_method_1(['abc', 'def', 'ghi', 'jkl']) == ['def', 'jkl']
puts evens_method_1([123]) == []
puts evens_method_1([]) == []

puts "\nUsing Method 2:"
puts oddities_method_2([2, 3, 4, 5, 6, 7, 8, 9, 10]) == [2, 4, 6, 8, 10]
puts oddities_method_2(['abc', 'def','ghi', 'jkl']) == ['abc', 'ghi']
puts oddities_method_2([123]) == [123]
puts oddities_method_2([]) == []
puts evens_method_2([2, 3, 4, 5, 6, 7, 8, 9, 10]) == [3, 5, 7, 9]
puts evens_method_2(['abc', 'def', 'ghi', 'jkl']) == ['def', 'jkl']
puts evens_method_2([123]) == []
puts evens_method_2([]) == []

puts "\nUsing Method 3:"
puts oddities_method_3([2, 3, 4, 5, 6, 7, 8, 9, 10]) == [2, 4, 6, 8, 10]
puts oddities_method_3(['abc', 'def','ghi', 'jkl']) == ['abc', 'ghi']
puts oddities_method_3([123]) == [123]
puts oddities_method_3([]) == []
puts evens_method_3([2, 3, 4, 5, 6, 7, 8, 9, 10]) == [3, 5, 7, 9]
puts evens_method_3(['abc', 'def', 'ghi', 'jkl']) == ['def', 'jkl']
puts evens_method_3([123]) == []
puts evens_method_3([]) == []