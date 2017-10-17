# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: Tip calculator

# Create a simple tip calculator. 
# The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip 
# and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

def prompt(msg)
  puts "=> #{msg}"
end
puts "Welcome to the Tip Calculator!"

prompt("Please enter the bill amount.")
bill_amt = gets.chomp.to_f

prompt("Please enter the tip percentage.(must be between 0 and 100 percent)")
tip_rate = gets.chomp.to_f
tip = (bill_amt * (tip_rate/100)).round(2)
total = (bill_amt + tip).round(2)

prompt("The tip is $#{format("%.2f", tip)}")
prompt("The total is $#{format("%.2f", total)}")


# Further Exploration

# Our solution prints the results as $30.0 and $230.0 
# instead of the more usual $30.00 and $230.00.
# Modify your solution so it always prints the results with 2 decimal places.

# Hint: You will likely need Kernel#format for this.