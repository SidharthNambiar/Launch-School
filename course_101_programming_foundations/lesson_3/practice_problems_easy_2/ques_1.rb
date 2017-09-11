# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Easy 2 - Question 1

# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

#see if "Spot" is present.

ages.has_key?("Spot") ? puts("Spot is present.") : puts("Spot is not present.")

#Bonus: What are two other hash methods that would work just as well for this solution?

# Alternate method 1

ages.include?("Spot") ? puts("Spot is present.") : puts("Spot is not present.")

# Alternate method 2

ages.key?("Spot") ? puts("Spot is present.") : puts("Spot is not present.")


# Alternate method 3

ages.member?("Spot") ? puts("Spot is present.") : puts("Spot is not present.")


