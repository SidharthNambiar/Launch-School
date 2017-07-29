# Introduction to Programming
# Exercises
# Exercise 12


# Given the following data structures. 
# Write a program that moves the information from the array into the empty hash 
# that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


=begin 

My original solution

contact_data.each_index do |index|

  contact_data[index].each_with_index do |value, sub_index|

    if index == 0
      case sub_index
      when 0 then contacts["Joe Smith"][:email] = value
      when 1 then contacts["Joe Smith"][:address] = value
      when 2 then contacts["Joe Smith"][:phone] = value
      end
    else
      case sub_index
      when 0 then contacts["Sally Johnson"][:email] = value
      when 1 then contacts["Sally Johnson"][:address] = value
      when 2 then contacts["Sally Johnson"][:phone] = value
      end
    end
  end
end

=end

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

p contacts