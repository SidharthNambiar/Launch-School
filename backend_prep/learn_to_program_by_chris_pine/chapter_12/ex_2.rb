# Learn To Program
# Chapter 12 : New Classes of Objects
# Happy Birthday

# Ask what year was born in, then the month, and then the day
# Figure out how old they are, and give them a big SPANK! for each
# birthday they have had

puts "What year were you born? (enter the number)"
year = gets.chomp.to_i

puts "What month were you born? (enter the number)"
month = gets.chomp.to_i

puts "What day were you born? (enter the number)"
day = gets.chomp.to_i

time_of_birth = Time.gm(year, month, day)
puts "You were born on:"
puts time_of_birth
time_now = Time.new

current_age = ((time_now - time_of_birth)/60/60/24/365).to_i
puts "You are currently #{current_age} years old."

spank_number = 0
while current_age > 0
  spank_number += 1
  puts "Here's spank #{spank_number}! "
  current_age -= 1
 
end







