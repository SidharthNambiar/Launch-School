# Learn To Program
# Chapter 7: Flow Control
# Exercise 4

# Program must ask for a starting year and ending year
# Then puts all the leap years between them (and including them if they are also leap years)

# Leap years are divisible by 4
# Years divisible by 100 are not leap years unless they are divisible by 400


puts "Please enter a starting year."
current_year = gets.chomp.to_i

puts "Please enter a ending year."
ending_year = gets.chomp.to_i

=begin

# Method 1

while (current_year <= ending_year)

  if current_year%4 == 0
    puts current_year if (current_year%100 == 0) && (current_year%400 == 0)
    puts current_year if current_year%100 != 0
  end
  current_year += 1 
  
end

=end

# Method 2

(current_year..ending_year).each do |year|

  next if year%4 != 0
  next if year%100 == 0 && year%400 != 0

  puts year

end