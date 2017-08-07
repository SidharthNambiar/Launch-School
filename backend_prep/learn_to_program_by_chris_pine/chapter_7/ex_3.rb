# Learn To Program
# Chapter 7: Flow Control
# Exercise 3

# BYE must be entered 3 times in a row in order to exit the program.

bye_count = 0
grandchild_response = ''
puts "Hello Grandchild, is there something you'd like to say to me?"
puts "Enter 'BYE' to exit this conversation respectfully, or respond back."

while (bye_count < 3)

  grandchild_response = gets.chomp

  if grandchild_response != grandchild_response.upcase
    puts "HUH?! SPEAK UP, SONNY!"
    bye_count = 0
  end

  if (grandchild_response  == grandchild_response.upcase)

    bye_count += 1 if grandchild_response == 'BYE'
    bye_count = 0 if grandchild_response != 'BYE'
    break if bye_count == 3
    puts "NO, NOT SINCE #{rand(1930..1950)}!"

  end
  
end

puts "Bye, my favorite Grandchild!"