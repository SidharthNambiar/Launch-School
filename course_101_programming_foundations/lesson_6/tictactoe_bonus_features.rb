# Course 101 Programming Foundations
# Lesson 6: Slightly Larger Programs
# Walk-through: Tic Tac Toe Bonus Features

# Bonus Features:
# 1. Improved "join"
# 2. Keep Score
# =>  Keep score of how many times the player and computer each win. 
# =>  Don't use global or constant variables. Make it so that the first player to 5 wins the game.

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagnols

def prompt(msg)
  puts "=> #{msg}"
end

# Display board

# rubocop: disable  Metrics/AbcSize
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
# rubocop: enable  Metrics/AbcSize

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
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
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


loop do 
  player_total = 0
  computer_total = 0
  loop do
    board = initialize_board
    display_board(board, player_total, computer_total)

    loop do
      display_board(board, player_total, computer_total)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end

    # display_board(board, player_total, computer_total)

    if someone_won?(board)
      player_total += 1 if detect_winner(board) == 'Player'
      computer_total += 1 if detect_winner(board) == 'Computer'
      display_board(board, player_total, computer_total)
      prompt"#{detect_winner(board)} won this round!"
    else
      prompt"It's a tie!"
    end

    if player_total == 5
      prompt"Player has won 5 games. Congrats!"
      break
    elsif computer_total == 5
      prompt"Computer has won 5 games. Congrats!"
      break
    end

    prompt"Hit any key to move to the next round."
    answer = gets
  end

prompt"Play again? (y or n)"
answer = gets.chomp

break unless answer.downcase.start_with?('y')

end
prompt"Thanks for playing Tic Tac Toe! Good bye!"
