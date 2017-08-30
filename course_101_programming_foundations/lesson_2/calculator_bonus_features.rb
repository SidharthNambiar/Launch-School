# 101 Programming Foundations
# Lesson 2: Small Programs
# calculator_bonus_features.rb

# 1. Better integer validation
# The current method of validating the input for a number is very weak.
# It's also not fully accurate, as you cannot enter a 0.
# Come up with a better way of validating input for integers.

# 2. Number validation.
# Suppose we're building a scientific calculator, and we now need to account
# for inputs that include decimals.
# How can we build a validating method, called number?,
# to verify that only valid numbers -- integers or floats -- are entered?

# 3. Changes to method, opertation_to_message
# Our operation_to_message method is a little dangerous,
# because we're relying on the case statement being the
# last expression in the method.
# What if we needed to add some code after the
# case statement within the method?
# What changes would be needed to keep the
# method working with the rest of the program?

# 4. Extracting messages in the program to a configuration file.
# There are lots of messages sprinkled throughout the program.
# Could we move them into some configuration file and access by key?
# This would allow us to manage the messages much easier,
# and we could even internationalize the messages.

# 5. Internationalize the messages
# Your calculator program is a hit, and it's being used all over the world!
# Problem is, not everyone speaks English.
# You need to now internationalize the messages in your calculator.
# You've already done the hard work of extracting
# all the messages to a configuration file.
# Now, all you have to do is send that configuration file to translators
# and call the right translation in your code.

require "yaml"
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num) # num is of type string
  (num == num.to_i.to_s) || (num == num.to_f.to_s)
end

def operation_to_message(op)
  result = case op
           when '1'
             'Adding'
           when '2'
             'Subtracting'
           when '3'
             'Multiplying'
           else
             'Dividing'
           end
  result
end

# declare and initialize the variables
number1 = ''
number2 = ''
name = ''
operator = ''

# welcome the user to the application
prompt messages('welcome', LANGUAGE)

# make sure user enters a name and doesn't bypass this request
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt messages('valid_name', LANGUAGE)
  else
    break
  end
end

# greet the user with a personal message
prompt messages('greeting', LANGUAGE) + name + "!"

# entering main loop
loop do
  loop do # request the first number
    prompt messages('first_number', LANGUAGE)
    number1 = Kernel.gets().chomp()

    # check if number entered by user is valid
    if valid_number?(number1)
      break
    else
      prompt messages('invalid', LANGUAGE)
    end
  end

  loop do
    prompt messages('second_number', LANGUAGE)
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt messages('invalid', LANGUAGE)
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt operator_prompt

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt messages('choose_option', LANGUAGE)
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f / number2.to_f()
           end

  prompt messages('result', LANGUAGE) + result.to_s

  prompt messages('calculate_again', LANGUAGE)
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end # end main loop

prompt messages('farewell', LANGUAGE)
