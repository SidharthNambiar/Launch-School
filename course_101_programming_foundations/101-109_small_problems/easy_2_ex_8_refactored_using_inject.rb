# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: Sum or Product of Consecutive Integers

# Further Exploration

# The compute_sum and compute_product methods are simple 
# and should be familiar. A more rubyish way of 
# computing sums and products is with the Enumberable#inject method. 
# #inject is a very useful method, but if you've never used it before, 
# it can be difficult to understand.

# Take some time to read the documentation for #inject. 
# (Note that all Enumerable methods can be used on Array.)
# Try to explain how it works to yourself.

# Try to use #inject in your solution to this problem.

result = nil 
number = 0
options = ['s', 'p']
computation = nil

# validate number
loop do 
  puts ">> Please enter an integer greater than 0:"
  number = gets.chomp.to_i
  break if number > 0
  puts "Ivalid Entry!"
end

# validate computation selection
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  computation = gets.chomp.downcase
  break if options.include?(computation)
  puts "Invalid Entry!"
end

if computation == 's'
  result = (1..number).inject(:+)
  puts "The sum of the integers between 1 and #{number} is #{result}."
else
  result = (1..number).inject(:*)
  puts "The product of the integers between 1 and #{number} is #{result}."
end

# The argument passed to the #inject method in this case
# specifies a symbol that names an operator; therefore,
# the inject method combines all the elements in the collection
# by applying the binary operation.