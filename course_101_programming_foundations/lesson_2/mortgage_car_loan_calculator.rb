# 101 Programming Foundations
# Lesson 2: Small Programs
# Mortgage/Car Loan Calculator

# Note: floating point values will be truncated
# to a precision of 2 decimal digits

# User Input
# loan amount($): floating point
# APR(%): floating point
# loan duration(months): floating point

# Program to calculate
# monthly interest rate(%): APR/12; floating point
# monthly payment calulation = m = p * (j / (1 - (1 + j)**(-n)))

# Include necessary modules

require 'yaml'
require 'pry'

# Load YAML
# The Ruby Standard Library parses the data from the 'yml' file into a hash.

MESSAGES = YAML.load_file('mortgage_car_loan_calculator.yml')

# Define CONSTANTS
MIN_APR = 1  # represents 1%
MAX_APR = 50 # represents 50% 

# Method definitions

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  (num == num.to_f.to_s) || (num == num.to_i.to_s)
end

def monthly_payment(amount, interest, duration)
  payment = amount * (interest / (1 - (1 + interest)**-duration))
  payment.truncate(2)
end

# Initialize local variables

name = ''
loan_amount = ''
annual_percentage_rate = ''
loan_duration_months = ''
monthly_interest_rate = nil

# Begin Interaction with user

prompt MESSAGES['welcome']


# Grabbing the user's name and making sure the user
# can't bypass this step by hitting "ENTER"

loop do
  # The chomp method must be invoked on the return value
  # of gets in order to get rid of the new line character (\n)
  name = gets.chomp
  if name.empty?
    prompt MESSAGES['valid_name']
  else
    prompt "Hi #{name}!"
    break
  end
end

# Entering main loop

loop do
  # Prompt user to enter the loan amount
  prompt MESSAGES['enter_loan_amount']
  loop do
    loan_amount = gets.chomp

    if valid_number?(loan_amount)
      loan_amount = loan_amount.to_f.truncate(2)
      break if loan_amount > 0
      prompt MESSAGES['invalid_loan_amount']
    else
      prompt MESSAGES['invalid_entry']
    end
  end

  # Prompt user to enter the Annual Percentage Rate (APR)

  prompt MESSAGES['enter_apr_amount']
  loop do
    annual_percentage_rate = gets.chomp

    if valid_number?(annual_percentage_rate)
      annual_percentage_rate = annual_percentage_rate.to_f.truncate(2)
      break if annual_percentage_rate.between?(MIN_APR, MAX_APR)
      prompt "APR must be between #{MIN_APR}% and #{MAX_APR}%."
    else
      prompt MESSAGES['invalid_entry']
    end
  end

  # Prompt user to enter the loan duration in months

  prompt MESSAGES['enter_loan_duration']

  loop do
    loan_duration_months = gets.chomp

    if valid_number?(loan_duration_months)
      loan_duration_months = loan_duration_months.to_f.truncate(2)
      break if loan_duration_months > 0
      prompt MESSAGES['invalid_loan_duration']
    else
      prompt MESSAGES['invalid_entry']
    end
  end

  user_inputs = <<-MSG
    #{name}, the monthly payment will now be calculated based on the information below:
    1. Loan amount of $#{loan_amount}
    2. APR of #{annual_percentage_rate}%
    3. Loan duration of #{loan_duration_months} months
  MSG

  prompt user_inputs

  # convert APR to monthly interest rate

  monthly_interest_rate = annual_percentage_rate / 1200

  # perform calculation

  monthly_amount = monthly_payment(loan_amount,
                                   monthly_interest_rate,
                                   loan_duration_months)

  prompt "#{name}, your monthly payment is $#{monthly_amount}"

  prompt MESSAGES['calculate_again']
  answer = gets.chomp

  break if answer.downcase != 'y'
end

# exited main loop

prompt MESSAGES['goodbye_message']
