def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
    1.times do
     puts rand(0..11)
    end  
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!" 
end

def initial_round
  first_deal= deal_card + deal_card  
  first_deal

  display_card_total(first_deal)
  first_deal
end 
    
def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
end 

def hit?(number)
  prompt_user
  i=get_user_input
 
    if i =='h'
       number= number + deal_card
    elsif i =='s'
       number
    else
       invalid_command
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
  card_total=initial_round 
  until card_total>21 
    card_total=hit?(card_total)  
    display_card_total(card_total)
  end 
end_game(card_total)
end 
    
