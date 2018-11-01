def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  card
end

def display_card_total(card_total)
  phrase = "Your cards add up to #{card_total}"
  puts phrase
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp()
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  card_total_in_hand = deal_card + deal_card
  display_card_total(card_total_in_hand)
  card_total_in_hand
end

def hit?(current_card_num)
  prompt_user
  input = get_user_input
  if input == "h"
      current_card_num + deal_card
  elsif input == "s"
      current_card_num
  else
    invalid_command
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
  total = initial_round
  until total > 21 do
    total = hit?(total)
    puts "Your cards add up to #{total}"
  end
  end_game(total)
end

