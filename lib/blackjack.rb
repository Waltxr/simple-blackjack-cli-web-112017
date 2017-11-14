def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  print card_total
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  cards = deal_card + deal_card
  print display_card_total(cards)
  return cards
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input

  if user_input == "h"
    new_card = deal_card
    return card_total + new_card
  elsif user_input == "s"
    return card_total
  else
    puts "Please enter a valid command"
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total += hit?(card_total)
    display_card_total(card_total)
  end
  return end_game
end
