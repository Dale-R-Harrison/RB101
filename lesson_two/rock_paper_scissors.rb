
VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "spock"]
ALT_CHOICES = ["r", "p", "sc", "l", "sp"]
WINNING_VALUES = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spock'],
  scissors: ['paper', 'lizard'],
  spock: ['scissors', 'rock'],
  lizard: ['spock', 'paper']
}

def prompt(message)
  puts "=> #{message}"
end

def display_results(player, computer)
  if player == computer
    prompt "It's a tie!"
  elsif WINNING_VALUES[player.to_sym].include?(computer)
    prompt "You win this round!"
  else
    prompt "You lose this round!"
  end
end

def track_results(player, computer, totals_array)
  if WINNING_VALUES[player.to_sym].include?(computer)
    totals_array[0] += 1
  elsif player == computer
  else
    totals_array[1] += 1
  end
end

def display_totals(totals_array)
  prompt "You have won #{totals_array[0]} rounds."
  prompt "The computer has won #{totals_array[1]} rounds."
end

def recieve_valid_choice
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}."
    alt = ALT_CHOICES.join(', ')
    prompt "You may instead enter one of the following shortcuts: #{alt}."
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      return choice
    elsif ALT_CHOICES.include?(choice)
      choice = VALID_CHOICES[ALT_CHOICES.index(choice)]
      return choice
    else
      prompt "That's not a valid choice."
    end
  end
  choice
end

def print_welcome
  prompt "Welcome! Let's play Rock, Paper, Scissors, Lizard, Spock!"
  puts "-----------------------------------------------------------"
  puts ""
  prompt "Each round, you may pick an option. The first to five rounds wins!"
end

def play_again?
  prompt "Do you want to play again? Enter yes or no."
  loop do
    answer = gets.chomp.downcase

    if answer == 'yes' || answer == 'y'
      return true
    elsif answer == 'no' || answer == 'n'
      return false
    else
      prompt "I don't understand. Enter yes or no."
    end
  end
end

system('clear') || system('cls')
print_welcome

loop do
  totals = [0, 0]
  loop do
    puts ""
    choice = get_valid_choice
    computer_choice = VALID_CHOICES.sample

    prompt "You chose: #{choice}; Computer chose: #{computer_choice}"

    track_results(choice, computer_choice, totals)
    display_results(choice, computer_choice)
    display_totals(totals)

    if totals[0] >= 5
      prompt "You have won the game!"
      break
    elsif totals[1] >= 5
      prompt "You have lost the game!"
      break
    end
  end

  break if play_again? == false
end

prompt "Thank you for playing! Goodbye."
system('clear') || system('cls')
