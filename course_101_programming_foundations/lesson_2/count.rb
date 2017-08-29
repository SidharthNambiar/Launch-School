# 101 Programming Foundations
# Lesson 2: Small Programs
# Debugging: count.rb (PRY example)

require "pry"

counter = 0

loop do
  counter += 1
  break if counter == 5
  binding.pry
end
