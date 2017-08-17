# Learn To Program
# Chapter 13: Creating New Classes, Changing Existing Ones
# Extend Built-in Classes

class Integer

  def factorial

    puts "Negative numbers aren't allowed!" if self < 0

    self <= 1 ? 1 : self*((self-1).factorial) 

  end

end





puts "Please enter a non-negative number for factorial calculation:"
number = gets.chomp.to_i
puts "#{number}! is #{number.factorial}."