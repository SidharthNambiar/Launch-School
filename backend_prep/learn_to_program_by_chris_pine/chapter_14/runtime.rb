# Learn To Program
# Chapter 14: Blocks and Procs

def profile(block_description, &block)
  start_time = Time.new 
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

profile("25000 doublings") do 
  number = 1
  25000.times {number = number + number}
  puts "#{number.to_s.length} digits"
end

profile("count to a million") do 
  number = 0
  1_000_000.times {number = number + 1}
end