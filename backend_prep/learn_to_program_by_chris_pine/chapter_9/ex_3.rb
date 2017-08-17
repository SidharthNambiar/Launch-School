# Learn To Program
# Chapter 9: Writing Your Own Methods
# Exercise 3

# New-school Roman numerals (4= IV, 9 = IX)

# I = 1     V = 5     X = 10   L = 50
# C = 100   D = 500   M = 1000
# 400 = CD
# 900 = CM



def new_roman_numeral(number)
  
  roman = ""

  thousands_place = number/1000
  hundreds_place =  (number%1000)/100
  tens_place = (number%100)/10
  ones_place = (number%10)

  roman << "M"*thousands_place

  if hundreds_place == 9
    roman << "CM"
  elsif hundreds_place == 4
    roman << "CD"
  else
     roman = roman << 'D' * (number%1000 /500)
      roman = roman << 'C' * (number%500  /100)
  end

  if tens_place == 9
    roman << "XC"
  elsif tens_place == 4
    roman << "XL"
  else
    roman = roman << 'L' * (number%100  /50)
    roman = roman << 'X' * (number%50   /10)
  end


  if ones_place == 9
    roman << "IX"
  elsif ones_place == 4
    roman << "IV"
  else
    roman = roman << 'V' * (number%10   /5)
    roman = roman << 'I' * (number%5)
  end
    


end
puts "Please enter a number between 1 and 3000."
num = gets.chomp.to_i

puts new_roman_numeral(num)




