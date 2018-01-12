# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 5

# Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# figure out the total age of just the male members of the family.

# Step 1: Iterate through hash and check gender

# Step 2: If the family member is a male, then store the member's age in an array

# Step 3: Compute the total age by adding all the values in the array

male_ages = []

munsters.each_value do |value|
	male_ages << value["age"] if value["gender"] == "male"
end

sum_male_ages = male_ages.sum
puts "Method 1: "
puts "The total age of just the male members of the family is #{sum_male_ages}"

puts "\nMethod 2:"

total_male_age = 0
munsters.each_value do |value|
	total_male_age += value["age"] if value["gender"] == "male"
end
puts "The total age of just the male members of the family is #{total_male_age}"