# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Additional Practice - Practice Problem 3

# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, 
         "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

puts "Method 1:"
no_old_people = ages.select do |key, value|
  value < 100
end
puts no_old_people

puts "\nMethod 2:"

no_old_folks = ages.reject do |key, value|
  value > 99
end

puts no_old_folks

puts "\nMethod 3:"

no_oldies_allowed = ages.keep_if do |key, value|
  value < 100
end

puts no_oldies_allowed