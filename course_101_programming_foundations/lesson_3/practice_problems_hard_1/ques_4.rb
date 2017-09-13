# 101 Programming Foundations
# Lesson 3: Practice Problem
# Practice Problems: Hard 1 - Question 4

# Ben was tasked to write a simple ruby method to determine 
# if an input string is an IP address representing 
# dot-separated numbers. e.g. "10.4.5.11". 
# He is not familiar with regular expressions.
# Alyssa supplied Ben with a method called is_an_ip_number? 
# that determines if a string is a valid ip address number and asked Ben to use it.

=begin
def valid_number?(number)
  number.to_i.to_s == number
end

def is_an_ip_number?(word)
  if valid_number?(word)
    word = word.to_i
    (word < 256) && (word > 0)
  else
    puts "Octet value must be an integer!"
    false
  end

end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  result = []
  if dot_separated_words.size == 4
    dot_separated_words.each do |number|
      result << is_an_ip_number?(number)
    end
  else
    puts "Input string doesn't contain 4 octets!"
    return false
  end
   if result.include?(false)
    false
  else
    true
  end
end


puts dot_separated_ip_address?("10.4.5.11")
puts dot_separated_ip_address?("ab.4.5.11")
puts dot_separated_ip_address?("10.299.5.11")
puts dot_separated_ip_address?("10.4.5.")
puts dot_separated_ip_address?("10.4.5.99.23")

=end

# Alyssa reviewed Ben's code and says "It's a good start, 
# but you missed a few things. 
# You're not returning a false condition,
# and you're not handling the case that there are more or fewer 
# than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

# Help Ben fix his code.

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

