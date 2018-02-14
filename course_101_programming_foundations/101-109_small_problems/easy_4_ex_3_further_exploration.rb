# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 4: Exercise 3 - Leap Years (Part 1) > Further Exploration


# The order in which you perform tests for a leap year calculation is important. 
# For what years will leap_year? fail if you rewrite it as:



def leap_year?(year)
  if year % 100 == 0 # years that are multiples of 100 and 400 will fail
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end

# Can you rewrite leap_year? to perform its tests in the opposite order of the above solution? 
# That is, test whether the year is divisible by 4 first, then, if necessary, 
# test whether it is divisible by 100, and finally, if necessary, test whether it is divisible by 400. 


def modified_leap_year?(year)
	if year%4 == 0
		if year%100 == 0
			if year%400 == 0
				true
			else
				false
			end
		else
			true
		end
	else
		false
	end
end

puts "Results of the modified function: "
puts modified_leap_year?(2016) == true
puts modified_leap_year?(2015) == false
puts modified_leap_year?(2100) == false
puts modified_leap_year?(2400) == true
puts modified_leap_year?(240000) == true
puts modified_leap_year?(240001) == false
puts modified_leap_year?(2000) == true
puts modified_leap_year?(1900) == false
puts modified_leap_year?(1752) == true
puts modified_leap_year?(1700) == false
puts modified_leap_year?(1) == false
puts modified_leap_year?(100) == false
puts modified_leap_year?(400) == true


# Is this solution simpler or more complex than the original solution?

# Answer: The solution is correct. It is simple to read but not succint due to the nested conditions.

