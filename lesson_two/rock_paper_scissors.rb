
require 'pry'
VALID_CHOICES = ["rock", "paper", "scissors"]
WINNING_VALUES = { rock: 'scissors', paper: 'rock', scissors: 'paper' }

def prompt(message)
  puts "=> #{message}"
end

def display_results(player, computer)
  if player == computer
    prompt "It's a tie!"
  elsif computer == winning_values[player.to_sym]
    prompt "You win!"
  else
    prompt "You lose!"
  end
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "That's not a valid choice."
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose: #{choice}; Computer chose: #{computer_choice}"

  display_results(choice, computer_choice)

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing! Goodbye."
