# Course 101 Programming Foundations
# Lesson 6: Slightly Larger Programs
# Walk-through: Tic Tac Toe Bonus Features

# Bonus Features (Implemented)
# 1. Improved "join"
# 2. Keep Score
# 3. Computer AI: Defense
# 4. Computer AI: Offense
# 5. Computer turn refinements
# 6. Improve the game loop

# On your own ideas (Not implemented)
# 1. Minimax algorithm
# 2. Bigger board
# 3. More players

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagnols
GAME_COMMENCER = "choose"
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
  if winning_line_located
    winning_line_located.each do |square|
      brd[square] = COMPUTER_MARKER if brd[square] == INITIAL_MARKER
    end
  elsif threat_located
    threat_located.each do |square|
      brd[square] = COMPUTER_MARKER if brd[square] == INITIAL_MARKER
    end
  elsif brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
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
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
       brd.values_at(*line).count(INITIAL_MARKER) == 1
      return line
    end
  end
  nil
end

def detect_computer_winning_location(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
       brd.values_at(*line).count(INITIAL_MARKER) == 1
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
    'computer'
  else
    'player'
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
