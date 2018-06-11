# Course 101 Programming Foundationss
# 101-109 Small Problems
# Easy 5: After Midnight (Part 1)

# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and 
# returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# HOURS_IN_A_DAY = 24
# MINUTES_IN_A_HOUR = 60
# VALID_OPERATION = ['add', 'subtract']

# def time_of_day(time)

  
#   # detect whether number is positive or negative, accordingly perform appropriate action
#   operation = time < 0 ? VALID_OPERATION.last : VALID_OPERATION.first

#   if operation == 'add'
#     puts "adding"
#   else
#     puts "subtracting"
#   end
  
# end





# Examples:

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# Disregard Daylight Savings and Standard Time and other complications.

# Launch School's solution

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day_alternate(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end


puts time_of_day_alternate(0) == "00:00"
puts time_of_day_alternate(-3) == "23:57"
puts time_of_day_alternate(35) == "00:35"
puts time_of_day_alternate(-1437) == "00:03"
puts time_of_day_alternate(3000) == "02:00"
puts time_of_day_alternate(800) == "13:20"
puts time_of_day_alternate(-4231) == "01:29"
