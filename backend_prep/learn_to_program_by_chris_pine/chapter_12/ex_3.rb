# Learn To Program
# Chapter 12 : New Classes of Objects
# Paty like it's roman_to_integer


def roman_to_integer(roman_value)
  digital_vals = {'i'=> 1, 'v'=> 5, 'x'=> 10, 'l'=> 50, 
                  'c'=> 100, 'd'=> 500, 'm'=> 1000,}

  roman_value.each_char do |char|
    if digital_vals.has_key?(char) == false
      return "Invalid Entry!"
    end 
  end

 

  reversed_roman_value = roman_value.reverse
  total_value = 0
  prev_val = 0
  prev_char = ''
  reversed_roman_value.each_char do |char|
    val = digital_vals[char]

    val < prev_val ? val *= -1 : prev_val = val
    total_value += val



=begin 
Note: The commented method below isn't concise and simple as the current implementation
above.
Instead of comparing the alphabets, it's simpler to compare the values
    case 
    when ((char == 'i') && (prev_char == 'x')) then total_value -= 1
    when ((char == 'i') && (prev_char == 'v')) then total_value -= 1
    when ((char == 'x') && (prev_char == 'l')) then total_value -= 10
    when ((char == 'x') && (prev_char == 'c')) then total_value -= 10
    when ((char == 'c') && (prev_char == 'd')) then total_value -= 100
    when ((char == 'c') && (prev_char == 'm')) then total_value -= 100
    else 
      total_value += digital_vals[char]
    end
    prev_char = char

=end    

  end

    

  
  total_value
end

puts "Please enter a roman number."
roman_number = gets.chomp.to_s.downcase
puts roman_to_integer(roman_number)



