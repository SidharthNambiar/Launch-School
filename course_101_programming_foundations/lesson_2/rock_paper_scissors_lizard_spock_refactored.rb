# 101 Programming Foundations
# Lesson 2: Small Programs
# RPS Bonus Features (Refactored)

# Rules (source: http://www.samkass.com/theories/RPSSL.html)
# Scissors cut Paper, Paper covers Rock
# Rock crushes Lizard, Lizard poisons Spock
# Spock smashes Scissors, Scissors decapitates Lizard
# Lizard eats Paper, Paper disproves Spock
# Spock vaporizes Rock, Rock crushes Scissors

# Requirements:
# 1. User must be able to enter 'r' for rock, 'p' for paper, 's' for scissors,
#    'l' for lizard, and 'S' for Spock
# 2. Keep score of the player's and computer's wins.
#    When either the player or computer reaches five wins,
#    the match is over, and the winning player becomes the grand winner.
# 3. Don't add your incrementing logic to display_results.

# CONSTANT Definitions

VALID_CHOICES = { 'r' => "rock", 'p' => "paper", 's' => "scissors",
                  'l' => "lizard", 'S' => "Spock" }
POINTS_TO_WIN = 5

WINNING_MOVES = { 'r' => ['l', 's'], 'l' => ['p', 'S'],
                  'S' => ['r', 's'], 's' => ['l', 'p'],
                  'p' => ['r', 'S'] }

PLAY_AGAIN_CHOICES = ['y', 'n']

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

def determine_winner(player, computer)
  if WINNING_MOVES[player].include?(computer)
    return "player"
  end

  if WINNING_MOVES[computer].include?(player)
    return "computer"
  end
end

def display_round_result(winner_of_round, pl_tally, comp_tally)
  if winner_of_round == "player"
    prompt("RESULT: You won this round!")
  elsif winner_of_round == "computer"
    prompt("RESULT: Computer won this round!")
  else
    prompt("RESULT: It's a tie!")
  end

  Kernel.puts("Scoreboard:")
  Kernel.puts("<PLAYER>   = #{pl_tally}")
  Kernel.puts("<COMPUTER> = #{comp_tally}")
end

def display_final_result(player_total, computer_total)
  Kernel.puts("Scoreboard:")
  Kernel.puts("<PLAYER>   = #{player_total}")
  Kernel.puts("<COMPUTER> = #{computer_total}")
  if player_total > computer_total
    prompt("**FINAL RESULT**: You won the game. Congratulations!")
  else
    prompt("**FINAL RESULT**: You lost the game. Sorry!")
  end
end

def display_selections(pl_choice, comp_choice, rnd)
  Kernel.puts("ROUND NUMBER: #{rnd}")
  Kernel.puts("You chose: #{VALID_CHOICES[pl_choice]}")
  Kernel.puts("Computer chose: #{VALID_CHOICES[comp_choice]}")
end

def play_again?
  prompt("Would you like to play again?
  (Enter 'y' to play again or 'n' to quit.)")

  # validate user input
  answer = ''
  loop do
    answer = Kernel.gets().chomp()
    if PLAY_AGAIN_CHOICES.include?(answer)
      break
    else
      puts "Invalid input! Please enter 'y' to play again or 'n' to quit."
    end
  end

  return true if answer == 'y'
  return false if answer == 'n'
end

# clears the console when invoked (Note: not guaranteed to work on all systems)
# source: https://launchschool.com/posts/b29a5ca5
def clear_screen
  system('clear') || system('cls')
end

# Begining interaction with user

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")

# main loop

loop do
  while player_points < POINTS_TO_WIN && computer_points < POINTS_TO_WIN

    clear_screen if round > 0
    display_selections(choice, computer_choice, round) if round > 0
    display_round_result(winner, player_points, computer_points) if round > 0

    available_options = <<-MSG
      Choose one:

      1. Enter lower case 'r' for Rock
      2. Enter lower case 'p' for Paper
      3. Enter lower case 's' for Scissors
      4. Enter lower case 'l' for Lizard
      5. Enter upper case 'S' for Spock

      First to 5 points wins the game!

      Each round is worth 1 point.

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

    winner = determine_winner(choice, computer_choice)
    player_points += 1 if winner == 'player'
    computer_points += 1 if winner == 'computer'

    round += 1
  end

  clear_screen
  display_selections(choice, computer_choice, round)
  display_final_result(player_points, computer_points)

  player_points = 0
  computer_points = 0
  round = 0
  break unless play_again?
  clear_screen
end

clear_screen
prompt("Thank you for playing. Goodbye!")
