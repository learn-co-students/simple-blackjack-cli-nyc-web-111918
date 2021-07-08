def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1+rand(11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input=gets.chomp
  return input
end

def end_game(input)
  puts "Sorry, you hit #{input}. Thanks for playing!"
end

def initial_round
  sum = deal_card+deal_card
  display_card_total(sum)
  return sum
end

def hit?(input)
  prompt_user
  user=get_user_input
  if user=='h'
    input=input+deal_card
  end
  return input
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cards=0
  while cards<21
    cards=initial_round
    cards=hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
