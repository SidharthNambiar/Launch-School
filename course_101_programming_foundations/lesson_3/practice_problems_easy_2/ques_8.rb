# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Easy 2 - Question 8

# Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# ...remove everything starting from "house".

# Review the String#slice! documentation, and use that method to make the return value
# "Few things in life are as important as ". 
#But leave the advice variable as "house training your pet dinosaur.".

starting_index = advice.index("Few")
end_index = advice.index("house")
advice.slice!(starting_index...end_index)
puts advice


# As a bonus, what happens if you use the String#slice method instead?
advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.slice(end_index..advice.length)