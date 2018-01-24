# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 4: Exercise 2 - What Century is That? (Refactored using LS's solution)

# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# need to determine in which century the year lies
# need to determine the appropriate suffix

def century(year)

	# code below determines the century number

	century = ''
	century_number = (year/100) + 1
	century_number -= 1 if (year%100) == 0

	century += century_suffix(century_number)

end

def century_suffix(cent_num)

	last_digit = cent_num % 10

	return cent_num.to_s + 'th' if [11,12,13].include?(cent_num%100)

	suffix = case last_digit
	when 1 then 'st'
	when 2 then 'nd'
	when 3 then 'rd'
	else 'th'
	end

	cent_num.to_s + suffix


end



#Examples:

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
puts century(45901) == '460th'
puts century(8929001) == '89291st'

