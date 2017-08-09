# Learn To Program
# Chapter 9: Writing Your Own Methods
# Exercise 2

# Old-school Roman numerals (9 = VIIII,not IX)

# I = 1     V = 5     X = 10   L = 50
# C = 100   D = 500   M = 1000


def old_roman_numeral(num)
  
 roman = ''

 roman = roman << 'M' * (num/1000)
 roman = roman << 'D' * (num%1000 /500)
 roman = roman << 'C' * (num%500  /100)
 roman = roman << 'L' * (num%100  /50)
 roman = roman << 'X' * (num%50   /10)
 roman = roman << 'V' * (num%10   /5)
 roman = roman << 'I' * (num%5)


end
puts "Please enter a number between 1 and 3000."
number = gets.chomp.to_i
puts old_roman_numeral(number)