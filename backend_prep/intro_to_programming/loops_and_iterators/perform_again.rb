# Introduction to Programming
# Loops and Iterators
# Example 7 (perform_again.rb)

loop do 
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != "Y"
    break
  end
end