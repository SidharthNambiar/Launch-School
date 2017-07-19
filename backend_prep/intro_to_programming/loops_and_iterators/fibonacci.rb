# Introduction to Programming
# Loops and Iterators
# Example 15 (fibonacci.rb)

def fibonacci(number)

  if number == 1 || number == 0 # launch school used "number < 2"
    number
  else
    fibonacci(number-1) + fibonacci(number-2)
  end

end

puts "Enter the number to perform the Fibonacci function on:"
num = gets.chomp.to_i

puts fibonacci(num)

# Note for self: entering big numbers (i.e. numbers greater than ~50) doesn't seem to return a value.
# Operation is frozen, Ctrl+C mus tbe entered to abort the operation