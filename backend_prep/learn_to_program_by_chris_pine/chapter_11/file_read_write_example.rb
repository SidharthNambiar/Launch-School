# Learn To Program
# Chapter 11 : Reading and Writing, Saving and Loading...
# File read and write example


filename = "ListerQuote.txt"
test_string = "I promise that I swear absolutely that " +
              "I will never mention gazpacho soup again."

File.open filename, 'w' do |f|
  f.write test_string
end          

read_string = File.read filename

puts(read_string == test_string)
puts filename
