# Learn To Program
# Chapter 14: Blocks and Procs
# Proc Example

toast = Proc.new do 
  puts "Cheers!!"
end

3.times {toast.call}