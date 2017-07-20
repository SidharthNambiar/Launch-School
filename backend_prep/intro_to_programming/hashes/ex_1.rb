# Introduction to Programming
# Hashes
# Exercise 1

# Given a hash of family members, with keys as the title and an array of names as the values, 
# use Ruby's built-in select method to gather only immediate family members' names 
# into a new array.

# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family_hash = {}
immediate_family_array = []

immediate_family_hash = family.select {|k,v| (k == :brothers) || (k == :sisters)}
immediate_family_array = immediate_family_hash.values.flatten
p immediate_family_array
