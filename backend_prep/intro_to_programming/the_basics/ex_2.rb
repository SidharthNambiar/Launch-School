# Introduction to Programming
# The Basics
# Exercise 2

# Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
# 1) thousands place
# 2) hundreds place
# 3) tens place
# 4) ones place

puts "Enter a 4 digit number."
num = gets.chomp.to_i

# my answer


ans_1 = num / 1000
ans_2 = (num / 100) % 10
ans_3 = (num / 10) % 10
ans_4 = num % 10

=begin

# launch school's answer

ans_1 = num / 1000
ans_2 = (num % 1000) / 100
ans_3 = (num % 100) / 10
ans_4 = num % 10

=end

puts "Value at thousands place is #{ans_1}"
puts "Value at hundreds place is #{ans_2}"
puts "Value at tens place is #{ans_3}"
puts "Value at ones place is #{ans_4}"