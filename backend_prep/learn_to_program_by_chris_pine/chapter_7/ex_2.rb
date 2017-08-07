# Learn To Program
# Chapter 7: Flow Control
# Exercise 2

# Unless I shout at grandma, she should always respond: HUH?! SPEAK UP, SONNY!

# If I shout, it must be in all capitals in order for grandma to hear it.

# If I shout, grandma will respond:  NO, NOT SINCE 1938!

# The year grandma shouts out must be a random year between 1930 and 1950

# To stop talking to Grandma, I must enter BYE

grandchild_response = ''
puts "Hello Grandchild, is there something you'd like say to me?"
puts "Enter 'BYE' to exit this conversation respectfully, or respond back."
while (grandchild_response != 'BYE')
  
  grandchild_response = gets.chomp
  puts "HUH?! SPEAK UP, SONNY!" if grandchild_response != grandchild_response.upcase
  puts "NO, NOT SINCE #{rand(1930..1950)}!" if (grandchild_response  == grandchild_response.upcase) && (grandchild_response != 'BYE')
  
end
