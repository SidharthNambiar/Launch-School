# 101 Programming Foundations
# Lesson 2: Small Programs
# Walk Through: Rock Paper Scissors

# the user makes a choice
# the computer makes a choice
# the winner is displayed

# CONSTANT Definitions

VALID_CHOICES = ['rock', 'paper', 'scissors']

# Method Definitions

# Things to consider: item 2
def test_method
  prompt("test message")
end

# Method to address Rubocop's warning against cyclomatic complexity
# win? method returns a boolean value
# Extracted the winning logic to the win? method

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

# method to calculate and display result

def display_results(player, computer)
  if win?(player, computer) # check to see if player won
    "You won!"
  elsif win?(computer, player) # check to see if compter won
    "Computer won!"
  else
    "It's a tie!"
  end
end

# user prompt method

def prompt(message)
  Kernel.puts("=> #{message}")
end
test_method

# Initialization of local variables

choice = ''
computer_choice = ''

loop do
  computer_choice = VALID_CHOICES.sample
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  puts display_results(choice, computer_choice)
  prompt("Do you want to play again? (Enter 'y' to play again.)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
