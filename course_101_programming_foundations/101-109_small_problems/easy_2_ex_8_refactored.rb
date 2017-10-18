# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: Sum or Product of Consecutive Integers

# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum
# or product of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.



def compute_sum(int)
  sum = 0
  int.downto(1) {|n| sum += n}
  sum
end

def compute_product(int)
  product = 1
  int.downto(1) {|n| product *= n}
  product
end

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
  result = compute_sum(number) 
  puts "The sum of the integers between 1 and #{number} is #{result}."
else
  result = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{result}."
end

