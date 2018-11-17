def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
  
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp()
  return input
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(number)
  prompt_user
  if get_user_input == "h"
    return number + deal_card
    
  else
    return number
  end
end

def invalid_command
  # code invalid_command here
end

def runner
  welcome
  x = initial_round
  until x > 21
    x = hit?(x)
    display_card_total(x)
  end
  end_game(x)
end
    
