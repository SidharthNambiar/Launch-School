# Introduction to Programming
# Loops and Iterators
# Exercise 4

# Write a method that counts down to zero using recursion.

def countdown(number)
  if number < 0
    return
  else
    puts "#{number}"
    countdown(number-1)
  end
end

puts "Please enter a number to countdown from:"
num = gets.chomp.to_i
countdown(num)