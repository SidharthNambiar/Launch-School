# Learn To Program
# Chapter 10: There's Nothing New to Learn in Chapter 10
# factorial example


def factorial(num)

  puts "Negative numbers aren't allowed!" if num < 0

  num <= 1 ? 1 : num*(factorial(num-1)) 

end

puts "Please enter a non-negative number for factorial calculation:"
number = gets.chomp.to_i
puts "#{number}! is #{factorial(number)}."