# Introduction to Programming
# More Stuff
# boolean_matchdata.rb 

def has_a_b?(string)
  puts /b/.match(string) ? "We have a match!" : "No match here."
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")