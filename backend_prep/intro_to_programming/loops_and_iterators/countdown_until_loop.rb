# Introduction to Programming
# Loops and Iterators
# Example 6 (countdown_until_loop.rb)

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"