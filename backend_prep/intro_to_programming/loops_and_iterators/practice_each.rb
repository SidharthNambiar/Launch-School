# Introduction to Programming
# Loops and Iterators
# Example 13 (practice_each.rb)



names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end