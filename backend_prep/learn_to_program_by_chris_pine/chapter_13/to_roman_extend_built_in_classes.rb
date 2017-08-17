# Learn To Program
# Chapter 13: Creating New Classes, Changing Existing Ones
# Extend Built-in Classes

# New-school Roman selferals (4= IV, 9 = IX)

# I = 1     V = 5     X = 10   L = 50
# C = 100   D = 500   M = 1000
# 400 = CD
# 900 = CM

class Integer

  def to_new_roman_numeral    
    roman = ""
    thousands_place = self/1000
    hundreds_place =  (self%1000)/100
    tens_place = (self%100)/10
    ones_place = (self%10)

    roman << "M"*thousands_place

    if hundreds_place == 9
      roman << "CM"
    elsif hundreds_place == 4
      roman << "CD"
    else
       roman = roman << 'D' * (self%1000 /500)
        roman = roman << 'C' * (self%500  /100)
    end

    if tens_place == 9
      roman << "XC"
    elsif tens_place == 4
      roman << "XL"
    else
      roman = roman << 'L' * (self%100  /50)
      roman = roman << 'X' * (self%50   /10)
    end


    if ones_place == 9
      roman << "IX"
    elsif ones_place == 4
      roman << "IV"
    else
      roman = roman << 'V' * (self%10   /5)
      roman = roman << 'I' * (self%5)
    end
      


  end

end

puts "Please enter a selfber between 1 and 3000."
number = gets.chomp.to_i

puts number.to_new_roman_numeral