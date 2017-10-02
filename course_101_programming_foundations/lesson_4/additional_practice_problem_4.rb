# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Additional Practice - Practice Problem 4

# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30,
         "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }

puts "Method 1:"

min_age = ages[ages.keys[0]]
ages.each do |key, value|
  if value < min_age
    min_age = value
  end
end
puts min_age

puts "\nMethod 2:"

puts ages.values.min