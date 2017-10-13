# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: How old is Teddy?

# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!
def print_age(name="Teddy", age)
  
end

age = rand(20..200)
puts "Please enter a name."
name = gets.chomp
name = "Teddy" if name.empty?
puts "#{name} is #{age} years old!"


# Further Exploration

# Modify this program to ask for a name, and then print the age for that person. 
# For an extra challenge, use "Teddy" as the name if no name is entered.

