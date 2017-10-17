# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: When will I Retire?

# Build a program that displays when the user will retire
# and how many years she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

puts "Welcome to the Retirement Calculator!"

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_left_till_retirement = retirement_age - age
current_year = Time.now.year

year_of_retirement =  current_year + years_left_till_retirement

puts "It's #{current_year}. You will retire in #{year_of_retirement}."
puts "You have only #{years_left_till_retirement} years of work to go!"