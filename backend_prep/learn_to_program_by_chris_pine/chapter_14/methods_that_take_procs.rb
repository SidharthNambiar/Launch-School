# Learn To Program
# Chapter 14: Blocks and Procs
# Methods that take Procs

def do_self_importantly(some_proc)
  puts "Everybody just HOLD ON! I'm doing something..."
  some_proc.call
  puts "OK everyone, I'm done. As you were."
end

say_hello = Proc.new do 
  puts "helllo"
end 

say_goodbye = Proc.new do 
  puts "goodbye"
end 

do_self_importantly(say_hello)
do_self_importantly(say_goodbye)