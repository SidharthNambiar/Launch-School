# Introduction to Programming
# Hashes
# Exercise 6

# Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in a different order. 
# Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

anagram_hash = {}
anagram_array = []

words.each do |v|
  
  key = v.split(//).sort.join.to_sym
  
  if anagram_hash.has_key?(key)
    anagram_hash[key] << v
  else
    anagram_hash[key] = [v]
  end

end

anagram_hash.values.each {|item| p item}

