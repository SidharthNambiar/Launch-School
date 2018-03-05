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

# suits: hearts (h), diamonds (d), clubs (c), and spades (s)

# deck = ['2h', '3h', '4h', '5h', '6h', '7h', '8h', '9h', '10h', 'jh', 'qh', 'kh', 'ah',
#         '2d', '3d', '4d', '5d', '6d', '7d', '8d', '9d', '10d', 'jd', 'qd', 'kd', 'ad',
#         '2c', '3c', '4c', '5c', '6c', '7c', '8c', '9c', '10c', 'jc', 'qc', 'kc', 'ac',
#         '2s', '3s', '4s', '5s', '6s', '7s', '8s', '9s', '10s', 'js', 'qs', 'ks', 'as']

require 'pry'

SUITS = ['h', 'd', 'c', 's']  # heart, diamond, club, spade
NON_FACE_VALUE_CARDS = ['j', 'q', 'k', 'a'] # jack, queen, king, ace
FACE_VALUE_CARDS = (2..10).to_a
GAMEPLAY_RESPONSES = ['h', 's']
NON_FACE_VALUE_CARDS_DEF = {'j' => 'Jack', 'q' => 'Queen', 'k' => 'King', 'a' => 'Ace'}


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

def determine_card_value(card, curr_deck_value)
  arr = card.chars
  value = 0
  if NON_FACE_VALUE_CARDS.include?(arr.first) || arr.size > 2
    if arr.first == 'a'
      value = determine_ace_value(curr_deck_value)
    else
      value = 10
    end
  else
    value = arr.first.to_i
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
  return_val = 0
  if curr_deck_value < 11
    return_val = 11
  else
    return_val = 1
  end
  return_val

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

  if NON_FACE_VALUE_CARDS_DEF.has_key?(arr.first)
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
    if ind == (deck.size-1 )
      deck_name << ' and' << " #{determine_card_name(card)}"
    else
      deck_name << "#{determine_card_name(card)}"
    end
    deck_name << ", " if (ind <= deck.size-3) && deck.size > 2
  end
  deck_name
end


def display(player_deck, dealer_deck, player_deck_val, dealer_deck_val)
  system 'clear'
  # puts "Dealer has: #{dealer_deck.last} and unknown card"
  puts "Dealer has: #{dealer_deck}. Total value = #{dealer_deck_val}"
  
  player_deck_name= ''
  dealer_deck_name = ''
  player_deck_name = get_deck_name(player_deck) 

  puts "You have: #{player_deck_name}. Total value: #{player_deck_val}"
end

def determine_winner(player_total, dealer_total)
  if player_total > dealer_total
    prompt "Player won the game!"
  elsif player_total == dealer_total
    prompt "It's a tie!"
  else
    prompt "Dealer won the game!"
  end
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

  display(player_deck, dealer_deck, player_deck_value, dealer_deck_value)
  player_move = ''

  loop do
    
    # Deal player cards until player stays
    while player_move != 's' do
      puts "\n"
      prompt "Do you want to 'hit' or 'stay'?"
      prompt "Enter 'h' to hit or 's' to stay."
      player_move = gets.chomp.downcase
      if player_move == 'h'
        player_deck += deal_card(deck, 1)
        player_deck_value = determine_deck_value(player_deck)
        display(player_deck, dealer_deck, player_deck_value, dealer_deck_value)
        break if player_deck_value > 21
      end
    end
    
    # check if player bust
    if player_deck_value > 21
      prompt "Dealer won the game!"
      break
    end
    
    # Deal cards to player as long as deck value is less than 18
    while dealer_deck_value < 18
      dealer_deck += deal_card(deck, 1)
      dealer_deck_value = determine_deck_value(dealer_deck)
    end
   
   display(player_deck, dealer_deck, player_deck_value, dealer_deck_value)

    # check if player bust
    if dealer_deck_value > 21
      prompt "Player won the game!"
      break
    end
    
    determine_winner(player_deck_value, dealer_deck_value)
    break
  end
 
  prompt "Do you want to play again? (Enter 'y' or 'n')"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end