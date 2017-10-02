# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Additional Practice - Practice Problem 6

# Amend this array so that the names are all shortened to 
# just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts "Method 1:"
flintstones.each do |name|
  if name.size > 3
    name.replace(name[0,3])
  end
end

puts flintstones

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts "\nMethod 2:"

flintstones.map! do |name|
  name[0,3]
end

puts flintstones