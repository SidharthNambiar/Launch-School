# Course 101 Programming Foundations
# Lesson 6: Slightly Larger Programs
# Walk-through: Tic Tac Toe Bonus Features

# Bonus Features:
# 1. Improved "join"

# 2. Keep Score
# => Keep score of how many times the player and computer each win.
# => Don't use global or constant variables.
# => Make it so that the first player to 5 wins the game.

# 3. Computer AI: Defense
# => The computer currently picks a square at random. 
# => That's not very interesting. 
# => Let's make the computer defensive minded, so that 
# => if there's an immediate threat, then it will defend the 3rd square. 
# => We'll consider an "immediate threat" to be 2 squares marked by the opponent in a row.
# => If there's no immediate threat, then it will just pick a random square.

# 4. Computer AI: Offense
# => The defensive minded AI is pretty cool, but it's still not performing as well as it could 
# => because if there are no impending threats, it will pick a square at random. 
# => We'd like to make a slight improvement on that. 
# => We're not going to add in any complicated algorithm (there's an extra bonus below on that),
# => but all we want to do is piggy back on our find_at_risk_square from bonus 
# => #3 above and turn it into an attacking mechanism as well. 
# => The logic is simple: if the computer already has 2 in a row, then fill in the 3rd square, 
# => as opposed to moving at random.

# 5. Computer turn refinements
# a) We actually have the offense and defense steps backwards. 
# => In other words, if the computer has a chance to win, it should take that move rather than defend.
# => As we have coded it now, it will defend first. 
# => Update the code so that it plays the offensive move first.
# b) We can make one more improvement: pick square #5 if it's available.
# => The AI for the computer should go like this: first, pick the winning move; then, defend; 
# => then pick square #5; then pick a random square.
# c) Can you change the game so that the computer moves first? 
# => Can you make this a setting at the top (i.e. a constant), 
# => so that you could play the game with either player or computer going first?
# => Can you make it so that if the constant is set to "choose", 
# => then your game will prompt the user to determine who goes first? 
# => Valid options for the constant can be "player", "computer", or "choose".


# 6. Improve the game loop
# => There's a bit of redundant code in the main game loop:

# loop do
#   display_board(board)
#   player_places_piece!(board)
#   break if someone_won?(board) || board_full?(board)
#   computer_places_piece!(board)
#   break if someone_won?(board) || board_full?(board)
# end

# => Notice how we have to break after each player makes a move. 
# => What if we could have a generic method that marks a square based on the player? 
# => We could do something like this:

# loop do
#   display_board(board)
#   place_piece!(board, current_player)
#   current_player = alternate_player(current_player)
#   break if someone_won?(board) || board_full?(board)
# end

# => There are two new methods there: place_piece! and alternate_player.
# => The place_piece! is a generic method that will know how to place the piece on the board 
# => depending on the current_player. That is, it will call player_places_piece! 
# => or computer_places_piece! depending on the value of current_player. 
# => The trick, then, is to keep track of a current_player, 
# => and to switch that variable's value after every turn.
# => See if you can build those two methods and make this work.


# On your own ideas
# Below are some extra ideas you may want to explore on your own.
# They're too challenging and out of scope for this course, 
# but may be worth exploring for the adventurous programmer.

# Minimax algorithm

# You can build an unbeatable Tic Tac Toe by utilizing the minimax algorithm.

# Bigger board

# What happens if the board is 5x5 instead of 3x3? What about a 9x9 board?

# More players

# When you have a bigger board, you can perhaps add more than 2 players. 
# Would it be interesting to play against 2 computers? 
#What about 2 human players against a computer?

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagnols
GAME_COMMENCER = "choose" # Valid options for the constant can be "player", "computer", or "choose".
VALID_CHOICES = ["player", "computer"]

def prompt(msg)
  puts "=> #{msg}"
end

# Display board

# rubocop: disable  Metrics/AbcSize, Metrics/MethodLength
def display_board(brd, pl_total, com_total)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts "\nPlayer Score: #{pl_total} | Computer Score: #{com_total}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end
# rubocop: enable  Metrics/AbcSize, Metrics/MethodLength

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt"Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt"Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)  
  threat_located = detect_player_threat_location(brd)
  winning_line_located = detect_computer_winning_location(brd)

  # offense
  if winning_line_located
    winning_line_located.each do |square|
      brd[square] = COMPUTER_MARKER if brd[square] == INITIAL_MARKER
    end
  # defense
  elsif threat_located
    threat_located.each do |square|
     brd[square] = COMPUTER_MARKER if brd[square] == INITIAL_MARKER
    end
  # Pick square 5 if available
  elsif brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  # random selection (no threat or opportunity to win)  
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(arr, delimiter=', ', conjunction='or')
  return arr.join if arr.size < 2
  return arr.join(" #{conjunction} ") if arr.size < 3

  temp_arr = []
  arr.each_with_index do |val, indx|
    if indx == arr.length - 1
      temp_arr << "#{conjunction} " << val
    else
      temp_arr << val << delimiter
    end
  end
  temp_arr.join
end

def detect_player_threat_location(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
      return line
    end
  end
  nil  
end

def detect_computer_winning_location(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
      return line
    end
  end
  nil
end

def place_piece!(board, current_player)
  current_player == 'player' ? player_places_piece!(board) : computer_places_piece!(board)
end

def alternate_player(current_player)
  if current_player == 'player'
    return 'computer'
  else
    return 'player'
  end
end

loop do
  player_total = 0
  computer_total = 0
  loop do
    board = initialize_board
    display_board(board, player_total, computer_total)
    result = ''

    if GAME_COMMENCER == "choose"
      loop do
        prompt"Choose who starts the round by entering 'player' or 'computer'."
        result = gets.chomp.downcase
        break if VALID_CHOICES.include?(result)
        prompt"Invalid entry! Try again."
      end
    end

    display_board(board, player_total, computer_total)
    current_player = 'player' if GAME_COMMENCER == "player" || result == "player"
    current_player = 'computer' if GAME_COMMENCER == "computer" || result == "computer"

    loop do
        display_board(board, player_total, computer_total)
        place_piece!(board, current_player)
        current_player = alternate_player(current_player)
        break if someone_won?(board) || board_full?(board)
    end

    if someone_won?(board)
      player_total += 1 if detect_winner(board) == 'Player'
      computer_total += 1 if detect_winner(board) == 'Computer'
      display_board(board, player_total, computer_total)
      prompt"#{detect_winner(board)} won this round!"
    else
      display_board(board, player_total, computer_total)
      prompt"It's a tie!"
    end

    if player_total == 5
      prompt"Player has won 5 games. Congrats!"
      break
    elsif computer_total == 5
      prompt"Computer has won 5 games. Sorry, you lost!"
      break
    end

    prompt"Hit any key to move to the next round."
    gets
  end

  prompt"Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt"Thanks for playing Tic Tac Toe! Good bye!"
