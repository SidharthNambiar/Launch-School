# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 4: Exercise 2 - What Century is That?

# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# need to determine in which century the year lies
# need to determine the appropriate suffix

def century(year)

	# code below determines the century number

	century = ''
	century_number = 0
	
	if year < 101
		return century += '1st'
	else
		if year%100 >= 01
			century_number = (year/100) + 1
		else
			century_number = year/100
		end
	end
	
	# code below determines the appropriate suffix

	special_case = [11,12,13]

	if special_case.include?(century_number%100)
		return century += century_number.to_s	+ 'th'
	end

	standard_case = {0 =>'th', 1 => 'st', 2 => 'nd', 3 => 'rd',
					 4 => 'th', 5 => 'th', 6 => 'th', 7 => 'th', 
					 8 => 'th' , 9 => 'th' }

	last_digit = century_number % 10
	if standard_case.has_key?(last_digit)
		return century += century_number.to_s + standard_case[last_digit]
	end



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

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)

