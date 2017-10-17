# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: Even Numbers

# Print the even numbers from 1 to 99, inclusive. 
# All numbers should be printed on separate lines.

puts "Using the For Loop: "
for number in 1..99
  puts number if number.even?
end

puts "\nUsing the Range object:"

(1..99).each {|n| puts n if n.even?}

puts "\nUsing Integer#upto"

1.upto(99) {|i| puts i if i.even?}