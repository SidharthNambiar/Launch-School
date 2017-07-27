# Introduction to Programming
# More Stuff
# boolean_regex.rb 

def has_a_b?(string)
  puts string =~ /b/ ? "We have a match!" : "No match here."
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")