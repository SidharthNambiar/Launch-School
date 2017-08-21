# Learn To Program
# Chapter 14: Blocks and Procs
# Better Program Logger

# global variable

$indent_count = 0


def log(description, &block)
  prefix = " "*$indent_count
  puts prefix + "Going to enter the block..."
  $indent_count += 1
  puts prefix + description
  returned_value = block.call
  puts prefix + "The value returned by the block is #{returned_value}"
  puts prefix + "...left the block."
  
end

log("First call to log") do
  log("Second call to log") do 
    50
    log("Third call to log") {25}
  end
  100
end

