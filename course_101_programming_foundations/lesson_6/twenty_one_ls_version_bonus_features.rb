# Course 101 Programming Foundations
# Lesson 6: Slightly Larger Programs
# Assignment: Twenty-One Bonus Features

# Bonus Features
# => 1 Calculating the total.
# If we cache each player's total like this, will it continue to update correctly throughout the game? 
# If not, at what point do we need to update each player's total?

# => Answer: We need update each player's total after everytime after the cards are dealt.

# => 2
# We use the play_again? three times: after the player busts, after the dealer busts, 
# or after both participants stay and compare cards. Why is the last call to play_again? 
# a little different from the previous two?

# => Answer: The last call to play_again? is a little different from the previous two because
# => unlike before 'next' doesn't need to be explicitly called since the conditional check is 
# => being evaluated at the end.

# => 3
# Ending the round. As mentioned above, there are 3 places where the round can end 
# and we call play_again? each time. But another improvement we'd like to make is 
# to give it a consistent end-of-round output. Right now, we get a grand output only 
# after comparing cards. Can we extract this to a method and use it in the other two end-of-round areas?

# => 4
# Keep track of who won each round, and declare whoever reaches 5 points first as the winner.

# => 5
# What if we wanted to change this game to Thirty-One, 
# and the dealer hits until 27? Or what if our game should be Forty-One? 
# Or Fifty-One? In other words, the two major values right now -- 21 and 17 
# -- are quite arbitrary. We can store them as constants and refer to the 
# constants throughout the program. If we wanted to change the game to 
# Whatever-One, it's just a matter of updating those constants.


SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(total_card_value)
  total_card_value > 21
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_cards_total, player_cards_total)
 
  if player_cards_total > 21
    :player_busted
  elsif dealer_cards_total > 21
    :dealer_busted
  elsif dealer_cards_total < player_cards_total
    :player
  elsif dealer_cards_total > player_cards_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards_total, player_cards_total)
  result = detect_result(dealer_cards_total, player_cards_total)

  case result
  when :player_busted
    prompt "You busted! Dealer wins this round!"
  when :dealer_busted
    prompt "Dealer busted! You win this round!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def display_grand_output(dealer_cards, dealer_total, player_cards, player_total)

  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  prompt "Player has #{player_cards}, for a total of: #{player_total}"
  puts "=============="
end

def display_tally(dealer_tally, player_tally)
  
  prompt "Dealer Points: #{dealer_tally}"
  prompt "Player Points: #{player_tally}"
end

loop do
  prompt "Welcome to Twenty-One!"
  player_tally = 0
  dealer_tally = 0
  round_number = 0

  loop do

    # initialize vars
    deck = initialize_deck
    player_cards = []
    dealer_cards = []
    player_total = 0
    dealer_total = 0
    round_number += 1
    

    # initial deal
    2.times do
      player_cards << deck.pop
      dealer_cards << deck.pop
    end

    player_total = total(player_cards)
    dealer_total = total(dealer_cards)

    puts "\n"
    prompt "*****ROUND #{round_number}*****"
    prompt "Dealer has #{dealer_cards[0]} and ?"
    prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{player_total}."


    # player turn
    loop do   
      player_turn = nil
      loop do
        prompt "Would you like to (h)it or (s)tay?"
        player_turn = gets.chomp.downcase
        break if ['h', 's'].include?(player_turn)
        prompt "Sorry, must enter 'h' or 's'."
      end

      if player_turn == 'h'
        player_cards << deck.pop
        prompt "You chose to hit!"
        prompt "Your cards are now: #{player_cards}"
        player_total = total(player_cards)
        prompt "Your total is now: #{player_total}"
      end

      break if player_turn == 's' || busted?(player_total)
    end

    if busted?(player_total)
      display_result(dealer_total, player_total)
      dealer_tally += 1
      display_tally(dealer_tally, player_tally)
      dealer_tally > 4 ? break : next
    else
      prompt "You stayed at #{player_total}"
    end


    # dealer turn
    prompt "Dealer turn..."

    loop do
      break if total(dealer_cards) >= 17
      prompt "Dealer hits!"
      dealer_cards << deck.pop
      prompt "Dealer's cards are now: #{dealer_cards}"
      dealer_total = total(dealer_cards)
    end

    if busted?(dealer_total)
      prompt "Dealer total is now: #{dealer_total}"
      display_grand_output(dealer_cards, dealer_total, player_cards, player_total)
      display_result(dealer_total, player_total)
      player_tally += 1
      display_tally(dealer_tally, player_tally)
      player_tally > 4 ? break : next
      # play_again? ? next : break
    else
      prompt "Dealer stays at #{dealer_total}"
    end

    display_grand_output(dealer_cards, dealer_total, player_cards, player_total)

    display_result(dealer_total, player_total)

    dealer_tally +=1 if dealer_total > player_total
    player_tally += 1 if player_total > dealer_total
    display_tally(dealer_tally, player_tally)
    break if dealer_tally > 4
    break if player_tally > 4

  #  break unless play_again?

  end
  puts player_tally > dealer_tally ? "Player won the game!" : "Dealer won the game!"
  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"