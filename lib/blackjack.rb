def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
end

def display_card_total(deal_card)
  # code #display_card_total here
  puts "Your cards add up to #{deal_card}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(deal_card)
  # code #end_game here
  puts "Sorry, you hit #{deal_card}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(new_num)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
    new_num = new_num + deal_card
  elsif input == 's'
    new_num
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  # code invalid_command here
  puts "Invalid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
