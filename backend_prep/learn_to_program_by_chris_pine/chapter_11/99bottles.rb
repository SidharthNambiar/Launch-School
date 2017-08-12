# Learn To Program
# Chapter 11 : Reading and Writing, Saving and Loading...
# 99 bottels of beer

def english_number(number)

  # handle edge cases
  return "Please enter a number that isn't negative." if number < 0 
  return 'zero' if number == 0

  num_string = ''

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']


  left = number
  write = left/1000
  left = left - write*1000

  if write > 0 
  thousands = english_number write
  num_string = num_string + thousands + ' thousand'
    if left > 0 
      num_string = num_string + ' and '
    else
      return num_string
    end
  end

  #left = number
  write = left/100 # reminder: integer division
  left = left - write*100

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0 
      num_string = num_string + ' and '
    end
  end

  write = left/10
  left = left - write*10

  if write > 0 
    if ((write == 1) and (left > 0))
      num_string = num_string + teens[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end

  end

  write = left
  left = 0

   if write > 0 
    num_string = num_string + ones_place[write-1]
  end

  num_string
end



bottles_left = 99

while bottles_left > 2
  puts "\n#{english_number(bottles_left).capitalize} bottles of beer on the wall, " +
  "#{english_number(bottles_left)} bottles of beer!"

  bottles_left -= 1
  puts "\nTake one down, pass it around, #{english_number(bottles_left)}" +
  " bottles of beer on the wall!"
end 

puts "\nTwo bottles of beer on the wall, two bottles of beer!"
puts "\nTake one down, pass it around, one bottle of beer on the wall!"
puts "\nOne bottle of beer on the wall, one bottle of beer!"
puts "\nTake one down and pass it around, no more bottles of beer on the wall."
puts "\nNo more bottles of beer on the wall, no more bottles of beer."
puts "\nGo to the store and buy some more, #{english_number(bottles_left)} bottles of beer on the wall."
