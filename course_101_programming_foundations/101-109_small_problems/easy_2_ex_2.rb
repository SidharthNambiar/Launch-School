# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: How big is the room?

# Build a program that asks a user for the length and width of a room 
# in meters and then displays the area of the room in both square meters 
# and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

SQMETER_TO_SQFEET = 10.7639
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETER = 929.03



puts "Enter the length of the room in meters:"
length_m = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width_m = gets.chomp.to_f
area_m = length_m*width_m
area_ft = area_m*SQMETER_TO_SQFEET

puts "The area of the room is #{area_m.round(2)} square meters (#{area_ft.round(2)} square feet)."

# Further Exploration

# Modify this program to ask for the input measurements in feet, 
# and display the results in square feet, square inches, 
# and square centimeters.

puts "\nEnter the length of the room in feet:"
length_ft = gets.chomp.to_f
puts "Enter the width of the room in feet:"
width_ft = gets.chomp.to_f
area_ft = length_ft*width_ft
area_inches = area_ft*SQFEET_TO_SQINCHES
area_cm = area_ft*SQFEET_TO_SQCENTIMETER

puts "The area of the room is #{area_ft.round(2)} square feet."
puts "The area of the room is #{area_inches.round(2)} square inches."
puts "The area of the room is #{area_cm.round(2)} square centimeters."
