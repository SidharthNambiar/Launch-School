# Course 101 Programming Foundations
# Lesson 6: Slightly Larger Programs
# Assignment: Twenty-One

require 'pry'

SUITS = ['h', 'd', 'c', 's']
NON_FACE_VALUE_CARDS = ['j', 'q', 'k', 'a']
FACE_VALUE_CARDS = (2..10).to_a
VALID_GAMEPLAY_RESPONSES = ['h', 's']
VALID_PLAY_AGAIN_RESPONSES = ['y', 'n']
NON_FACE_VALUE_CARDS_DEF = { 'j' => 'Jack', 'q' => 'Queen',
                             'k' => 'King', 'a' => 'Ace' }

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = []
  SUITS.each do |suit|
    FACE_VALUE_CARDS.each { |card| deck << (card.to_s + suit) }
    NON_FACE_VALUE_CARDS.each { |card| deck << (card + suit) }
  end
  deck.shuffle
end

def determine_card_value(card, curr_deck_value)
  arr = card.chars
  if NON_FACE_VALUE_CARDS.include?(arr.first) || arr.size > 2
    if arr.first == 'a'
      return determine_ace_value(curr_deck_value)
    else
      return 10
    end
  else
    return arr.first.to_i
  end
end

def determine_deck_value(deck)
  curr_deck_value = 0
  deck.each do |card|
    curr_deck_value += determine_card_value(card, curr_deck_value)
  end
  curr_deck_value
end

def determine_ace_value(curr_deck_value)
  curr_deck_value < 11 ? 11 : 1
end

def deal_card(deck, num)
  arr = []
  num.times do
    card = deck.sample
    arr << card
    deck.delete(card)
  end
  arr
end

def determine_card_name(card)
  arr = card.chars
  if NON_FACE_VALUE_CARDS_DEF.key?(arr.first)
    NON_FACE_VALUE_CARDS_DEF[arr.first]
  elsif arr.size > 2
    10.to_s
  else
    arr.first
  end
end

def get_deck_name(deck)
  deck_name = ""
  deck.each_with_index do |card, ind|
    if ind == (deck.size - 1)
      deck_name << ' and' << " #{determine_card_name(card)}"
    else
      deck_name << determine_card_name(card).to_s
    end
    deck_name << ", " if (ind <= deck.size - 3) && deck.size > 2
  end
  deck_name
end

def display(player_deck, dealer_deck, player_deck_val, _dealer_deck_val)
  system 'clear'
  dealer_deck_name = determine_card_name(dealer_deck.first)
  player_deck_name = get_deck_name(player_deck)
  prompt "Dealer has: #{dealer_deck_name} and unknown card(s)."
  prompt "You have: #{player_deck_name}."
  prompt "Player total value: #{player_deck_val}"
end

def display_all(player_deck, dealer_deck, player_deck_val, dealer_deck_val)
  dealer_deck_name = get_deck_name(dealer_deck)
  player_deck_name = get_deck_name(player_deck)
  prompt "Dealer had: #{dealer_deck_name}. Total value: #{dealer_deck_val}"
  puts "\n"
  prompt "You had: #{player_deck_name}. Total value: #{player_deck_val}"
end

def determine_winner(player_total, dealer_total)
  if player_total > dealer_total
    return 'Player'
  elsif player_total < dealer_total
    return 'Dealer'
  end
  nil
end

def display_winner(the_winner)
  system 'clear'
  puts "\n********************"
  puts the_winner.nil? ? "It's a tie!" : "#{the_winner} won the game!"
  puts "********************"
end

def busted?(deck_value)
  deck_value > 21
end

loop do
  system 'clear'
  deck = initialize_deck
  player_deck = deal_card(deck, 2)
  dealer_deck = deal_card(deck, 2)
  player_deck_value = 0
  dealer_deck_value = 0
  player_deck_value = determine_deck_value(player_deck)
  dealer_deck_value = determine_deck_value(dealer_deck)
  player_move = ''
  winner = ''
  answer = ''

  display(player_deck, dealer_deck, player_deck_value, dealer_deck_value)

  loop do
    # ask player to hit or stay
    while player_move != 's'
      loop do
        puts "\n"
        prompt "Do you want to 'hit' or 'stay'?"
        prompt "Enter 'h' to hit or 's' to stay. (case insensitive)"
        player_move = gets.chomp.downcase
        break if VALID_GAMEPLAY_RESPONSES.include?(player_move)
        prompt "Invalid Entry! Try again!"
      end

      if player_move == 'h'
        player_deck += deal_card(deck, 1)
        player_deck_value = determine_deck_value(player_deck)
        display(player_deck, dealer_deck, player_deck_value, dealer_deck_value)
        break if player_deck_value > 21
      end

    end
    # check if player bust
    
    winner = 'Dealer' if busted?(player_deck_value)
    break if winner.empty? == false
    # Deal cards to player as long as deck value is less than 18
    while dealer_deck_value < 18
      dealer_deck += deal_card(deck, 1)
      dealer_deck_value = determine_deck_value(dealer_deck)
    end
    display(player_deck, dealer_deck, player_deck_value, dealer_deck_value)
    # check if player bust
    winner = 'Player' if busted?(dealer_deck_value)
    break if winner.empty? == false
    winner = determine_winner(player_deck_value, dealer_deck_value)
    break
  end

  display_winner(winner)
  prompt "Dealer busted!" if busted?(dealer_deck_value)
  prompt "Player busted!" if busted?(player_deck_value)
  puts "\n"
  display_all(player_deck, dealer_deck, player_deck_value, dealer_deck_value)

  loop do
    puts "\n"
    prompt "Do you want to play again?"
    prompt "Hit 'y' to play again or 'n' to exit the game. (case insensitive)"
    answer = gets.chomp
    break if VALID_PLAY_AGAIN_RESPONSES.include?(answer.downcase)
    prompt "Invalid entry!"
  end
  break unless answer.downcase.start_with?("y")
end
