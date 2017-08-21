# Learn To Program
# Chapter 14: Blocks and Procs
# Program Logger

# Write a method called log that takes a string description of a block
# and a block.
# It should puts a string telling yout it started the block and another string
# at the the end telling you it finished and also telling you what the block returned.
# 

def log(description, &block)
  puts "\nGoing to enter the block..."
  puts description
  returned_value = block.call
  puts "\nThe value returned by the block is #{returned_value}"
  puts "\n...left the block."
end

log("First call to log:") do 
  puts "\nExecuting the block from first call."

  log("Second call to log:") do 
    puts "\nExecuting the block from second call."
    50
  end
  100
end

