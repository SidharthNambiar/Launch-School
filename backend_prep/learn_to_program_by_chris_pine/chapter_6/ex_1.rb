# Learn To Program
# Chapter 6: More About Methods
# Exercise 1

# Angry boss. Write an angry boss program that rudely asks what you want. 
# Whatever you answer, the angry boss should yell it back to you and then fire you. 
# For example, if you type in I want a raise, it should yell back like this:
# WHADDDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!

puts "Entering angry boss office..."
puts "What do you want? (asked angry boss rudely)"
response = gets.chomp
puts "WHADDDAYA MEAN \"#{response.upcase}\"?!? YOU'RE FIRED!!"


