# Course 101 Programming Foundations
# Lesson 4: Ruby Collections
# Practice Problems: Additional Practice - Practice Problem 5

# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"

puts "Method 1:"
result = nil
flintstones.each_with_index do |val, ind|
  if val[0] == 'B'
    if val[1] == 'e'
      result = ind
    end
  end
end

puts result

puts "\nMethod 2:"

result = nil
flintstones.each do |name|
  result = flintstones.index(name) if name.start_with?("Be")
end
puts result

puts "\nMethod 3:"

answer = flintstones.index do |name|
  name[0,2] == "Be"
end
puts answer