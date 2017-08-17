def roman_to_integer(roman_value)
  digital_vals = {'i'=> 1, 'v'=> 5, 'x'=> 10, 'l'=> 50, 
                  'c'=> 100, 'd'=> 500, 'm'=> 1000,}

  total = 0
  prev = 0

  roman_value.reverse.each_char do |char|
    c = char.downcase
    val = digital_vals[c]

    if !val
      puts "This is not a valid roman numeral!"
      return
    end

    if val < prev
      val *= -1
    else
      prev = val
    end

    total += val 

  end
  total



end

puts "Please enter a roman number."
roman_number = gets.chomp.to_s.downcase
puts roman_to_integer(roman_number)
