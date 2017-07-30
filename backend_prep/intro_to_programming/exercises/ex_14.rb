# Introduction to Programming
# Exercises
# Exercise 14

# In exercise 12, we manually set the contacts hash values one by one. 
# Now, programmatically loop or iterate over the contacts hash from exercise 12, 
# and populate the associated data from the contact_data array. 
# Hint: you will probably need to iterate over ([:email, :address, :phone]), 
# and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, 
# like this:


# One entry scenario

=begin
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

contact_type = [:email, :address, :phone]

contact_data_hash ={}

contact_type.each_with_index do |value, idx|
  contact_data_hash[value] = contact_data[idx]
end

contacts["Joe Smith"] = contact_data_hash

p contacts
=end

# Multiple entries scenario

# As a bonus, see if you can figure out how to make it work with 
# multiple entries in the contacts hash.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contact_type = [:email, :address, :phone]
contact_data_hash = {}
contacts_arr = []
# Assumption: array and hash order must match up

contact_data.each_index do |idx|

  contact_data[idx].each_with_index do |value, index|
    contact_data_hash[contact_type[index]] = value
  end

  contacts_arr = contacts.to_a
  contacts_arr[idx][1] = contact_data_hash
  contact_data_hash = {}
  contacts = contacts_arr.to_h

end

p contacts