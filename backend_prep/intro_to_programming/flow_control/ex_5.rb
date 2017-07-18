# Introduction to Programming
# Flow Conrol
# Exercise 5

# Rewrite your program from exercise 3 using a case statement. 
# Wrap the statement from exercise 3 in a method and wrap this new case statement in a method. 
# Make sure they both still work.

def case_statement(num)
  case
  when num >= 0 && num < 51
    "The number is between 0 and 50."
  when num >= 51 && num < 101
    "The number is between 51 and 100."
  when num >= 101
    "The number is above 100."
  else
    "The number entered is out of range."
  end
end

def if_else(num)
  if num >= 0 && num < 51
    puts "The number is between 0 and 50."
  elsif num >= 51 && num < 101
    puts "The number is between 51 and 100."
  elsif num >= 101
    puts "The number is above 100."
  else
    puts "The number entered is out of range."
  end
end

puts "Please enter a number between 0 and 100."
num = gets.chomp.to_i


puts case_statement(num)
puts if_else(num)
