# Course 101 Programming Foundations
# Lesson 6: Slightly Larger Programs
# Walk-through: Twenty-One

# Psuedo code:
# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

# Card Value
# 2-10 = face value
# jack, queen, king = 10
# ace = 1 or 11

# suits: hearts, diamonds, clubs, and spades

# deck = ['2h', '3h', '4h', '5h', '6h', '7h', '8h', '9h', '10h', 'jh', 'qh', 'kh', 'ah',
#         '2d', '3d', '4d', '5d', '6d', '7d', '8d', '9d', '10d', 'jd', 'qd', 'kd', 'ad',
#         '2c', '3c', '4c', '5c', '6c', '7c', '8c', '9c', '10c', 'jc', 'qc', 'kc', 'ac',
#         '2s', '3s', '4s', '5s', '6s', '7s', '8s', '9s', '10s', 'js', 'qs', 'ks', 'as']

SUITS = ['h', 'd', 'c', 's']  # heart, diamond, club, spade
NON_FACE_VALUE_CARDS = ['j', 'q', 'k', 'a'] # jack, queen, king, ace
FACE_VALUE_CARDS = (2..10).to_a
GAMEPLAY_RESPONSES = ['h', 's']


def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = []  
  SUITS.each do |suit|
    FACE_VALUE_CARDS.each {|card| deck << (card.to_s + suit)}
    NON_FACE_VALUE_CARDS.each {|card| deck << (card + suit)}
  end

  deck
end

def determine_card_value(card)
  arr = card.chars
  value = 0
  if NON_FACE_VALUE_CARDS.include?(arr.first) || arr.size > 2
    if arr.first == 'a'
      value = determine_ace_value
    else
      value = 10
    end
  else
    value = arr.first.to_i
  end
end

def determine_deck_value(deck)
  deck_value = 0
  deck.each do |card|
    deck_value += determine_card_value(card)
  end
  deck_value
end

def determine_ace_value
  1
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


def display(player_deck, dealer_deck)
  system 'clear'
  puts "Dealer has: #{dealer_deck.last} and unknown card"
  puts "You have: #{player_deck}. Total value = #{determine_deck_value(player_deck)}"
end

puts "Welcome to Twenty-One!"

loop do
  system 'clear' 
  deck = initialize_deck
  player_deck = deal_card(deck, 2)
  dealer_deck = deal_card(deck, 2)

  player_deck_value = determine_deck_value(player_deck)
  dealer_deck_value = determine_deck_value(dealer_deck)

  display(player_deck, dealer_deck)

  player_flag = 'on'

  loop do

  # player turn
  prompt "Do you want to 'hit' or 'stay'?"
  prompt "Enter 'h' to hit or 's' to stay."
  player_move = gets.chomp.downcase
  winner = ''
  

    # if player hits, insert a card from the deck into the existing array

  while player_flag == 'on' do
    if player_move == 'h'
      player_deck += deal_card(deck, 1)
      player_deck_value = determine_deck_value(player_deck)
    end
    
    if player_move == 's'
      player_flag = 'off'
    end
    break

  end


  while dealer_deck_value < 18
    dealer_deck += deal_card(deck, 1)
    dealer_deck_value = determine_deck_value(dealer_deck)
  end
    


    # if player_deck_value is greater than 21, declare dealer the winner.

    # if player stays, calculate total value and move on to the dealer.


    # dealer turn

    # if dealer hits, insert a card from the deck into the existing array
    # if dealer_deck_value is greater than 21, declare player the winner.
    # if dealer stays, calculate total value and move on to the player

    # check winner if any
    # => winning conditions
    # => 1. if both stay, one closest to or equal to 21 wins
    # => 2. if either one busts, then the other wins
    # =>  Bust conditions:
    # =>  a. if value is greater than 21

  end
  # loop do 
  #   prompt "Do you want to 'hit' or 'stay'? (Enter 'h/H' for hit or 's/S' for stay.)"
  #   player_response = gets.chomp.downcase

  #   if player_response == 'h'
  #     deal_card_to_player(deck, 1)
  #     player_deck_value = determine_deck_value(player_deck)
  #     deal_card_to_dealer(deck, 1) if dealer_deck_value <= 17
  #     display(player_deck, dealer_deck)

  #   elsif player_response == 's'
  #     break
  #   else
  #     prompt "Invalid response!"
  #   end
  # end


 
  p player_deck
  p dealer_deck
  p player_deck_value
  p dealer_deck_value

  prompt "to exit, hit e"
  answer = gets.chomp
  break if answer == 'e'


end