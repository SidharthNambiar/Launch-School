# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Easy 2 - Question 3

# We have most of the Munster family in our age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
puts ages

# add ages for Marilyn and Spot to the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

puts ages.merge!(additional_ages)