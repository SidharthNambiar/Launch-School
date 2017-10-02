# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Additional Practice - Practice Problem 2

# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, 
         "Grandpa" => 5843, "Eddie" => 10, 
         "Marilyn" => 22, "Spot" => 237 }

puts "Method 1:"
puts ages.values.sum

puts "\nMethod 2: "

total_age = 0
ages.each_value {|val| total_age += val }
puts total_age

puts "\nMethod 3: "
puts ages.values.inject(:+)