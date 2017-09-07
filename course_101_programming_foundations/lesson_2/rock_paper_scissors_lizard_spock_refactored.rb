# 101 Programming Foundations
# Lesson 2: Small Programs
# RPS Bonus Features (Refactored)

# Rules (source: http://www.samkass.com/theories/RPSSL.html)
# Scissors cut Paper, Paper covers Rock
# Rock crushes Lizard, Lizard poisons Spock
# Spock smashes Scissors, Scissors decapitates Lizard
# Lizard eats Paper, Paper disproves Spock
# Spock vaporizes Rock, Rock crushes Scissors

# Extended Requirements:
# 1. User must be able to enter 'r' for rock, 'p' for paper, 's' for scissors,
#    'l' for lizard, and 'S' for Spock
# 2. Keep score of the player's and computer's wins.
#    When either the player or computer reaches five wins,
#    the match is over, and the winning player becomes the grand winner.
# 3. Don't add your incrementing logic to display_results.

# Modules Included

require 'pry'

# CONSTANT Definitions

VALID_CHOICES = { 'r' => "rock", 'p' => "paper", 's' => "scissors",
                  'l' => "lizard", 'S' => "Spock" }
WINNING_COUNT = 5

WINNING_MOVES = { 'r' => ['l', 's'], 'l' => ['p', 'S'],
                  'S' => ['r', 's'], 's' => ['l', 'p'],
                  'p' => ['r', 'S'] }

# Initialize Local Variables

choice = ''
computer_choice = ''
player_points = 0
computer_points = 0
round = 0
winner = ''

# Method Definitions

def prompt(message)
  Kernel.puts("=> #{message}")
end

def result(player, computer)
  if WINNING_MOVES[player].include?(computer)
    return "player"
  end
  if WINNING_MOVES[computer].include?(player)
    return "computer"
  end
end

def display_result(winner_of_round, rnd, player_total, computer_total)
  if winner_of_round == "player"
    prompt("You won round #{rnd}!")
  elsif winner_of_round == "computer"
    prompt("Computer won round #{rnd}!")
  else
    prompt("Round #{rnd} is a tie!")
  end
  prompt("Scoreboard:")
  prompt("<PLAYER> = #{player_total}")
  prompt("<COMPUTER> = #{computer_total}")
end

def play_again?
  prompt("Would you like to play again? (Enter 'y' to play again.)")
  answer = Kernel.gets().chomp()
  if answer.downcase.start_with?('y')
    true
  else
    false
  end
end

# Begining interaction with user

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")

# main loop

loop do
  while player_points < WINNING_COUNT && computer_points < WINNING_COUNT

    round += 1

    available_options = <<-MSG
      Choose one:

      1. Enter lower case 'r' for Rock
      2. Enter lower case 'p' for Paper
      3. Enter lower case 's' for Scissors
      4. Enter lower case 'l' for Lizard
      5. Enter upper case 'S' for Spock

      First to 5 wins is the winner!

    MSG

    prompt(available_options)

    # validate user choice

    loop do
      choice = Kernel.gets().chomp()
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("Invalid selection! Try again.")
      end
    end

    # Randomnly select a choice for the computer

    computer_choice = VALID_CHOICES.keys.sample()

    prompt("You chose: #{VALID_CHOICES[choice]}")
    prompt("Computer chose: #{VALID_CHOICES[computer_choice]}")

    winner = result(choice, computer_choice)
    if winner == "player" then player_points += 1 end
    if winner == "computer" then computer_points += 1 end

    display_result(winner, round, player_points, computer_points)
  end

  if player_points > computer_points
    prompt("You won the game. Congratulations!")
  else
    prompt("You lost the game. Sorry!")
  end

  player_points = 0
  computer_points = 0
  round = 0
  break if play_again? == false
end

prompt("Thank you for playing. Goodbye!")
