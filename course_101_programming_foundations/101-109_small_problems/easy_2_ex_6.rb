# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: Odd Numbers

# Print all odd numbers from 1 to 99, inclusive. 
# All numbers should be printed on separate lines.

# Further Exploration

# Repeat this exercise with a technique different from the one you just used, 
# and different from the solution shown above. 
# You may want to explore the use Integer#upto or Array#select methods, 
# or maybe use Integer#odd?

puts "Using the For Loop: "
for number in 1..99
  puts number if number.odd?
end

puts "\nUsing the Range object:"

(1..99).each {|n| puts n if n.odd?}

puts "\nUsing Integer#upto"

1.upto(99) {|i| puts i if i.odd?}