
FACES = { 2 => 'Two',
          3 => 'Three',
          4 => 'Four',
          5 => 'Five',
          6 => 'Six',
          7 => 'Seven',
          8 => 'Eight',
          9 => 'Nine',
          10 => 'Ten',
          'J' => 'Jack',
          'Q' => 'Queen',
          'K' => 'King',
          'A' => 'Ace' }

def prompt(msg)
  puts "=> #{msg}"
end

def joiner(arr, spacer = ', ', last = 'and')
  result = ''
  if arr.length == 1
    result << arr[0].to_s
  elsif arr.length == 2
    result = "#{arr[0]} #{last} #{arr[1]}"
  else
    arr[-1] = "#{last} #{arr.last}"
    result = arr.join(spacer)
  end
  result
end

def initialize_deck
  deck_hash = {}
  [:hearts, :diamonds, :spades, :clubs].each do |e|
    deck_hash[e] = FACES.keys
  end
  deck_hash
end

def initialize_hands(deck, hand1, hand2)
  2.times do
    draw(deck, hand1)
    draw(deck, hand2)
  end
end

def draw(deck, hand)
  drawn_suit = []
  loop do
    drawn_suit = deck.keys.sample
    break if drawn_suit.empty? == false
  end

  drawn_card = deck[drawn_suit].sample
  hand << drawn_card
  deck[drawn_suit].delete(drawn_card)
end

def display_hands(hand1, hand2)
  display_array1 = hand1.map { |card| FACES[card] }
  i = 0
  display_array2 = hand2.map do |card|
    if i == 0
      i += 1
      FACES[card]
    else
      'unknown card'
    end
  end

  system 'clear'
  prompt "Dealer has: #{joiner(display_array2)}."
  prompt "You have: #{joiner(display_array1)}"
  current_value = retrieve_hand_value(hand1)
  prompt "The current value of your hand is : #{current_value}."
end

def display_final_hands(hand1, hand2)
  display_array1 = hand1.map { |e| FACES[e] }
  display_array2 = hand2.map { |e| FACES[e] }

  system 'clear'
  prompt "Final results: "
  puts "-------------------"
  prompt "Dealer has: #{joiner(display_array2)}."
  prompt "Dealer's final total is: #{retrieve_hand_value(hand2)}."
  prompt "You have: #{joiner(display_array1)}"
  prompt "Your final total is: #{retrieve_hand_value(hand1)}."
  if bust?(hand1)
    prompt 'You busted!'
  elsif bust?(hand2)
    prompt 'Dealer busted!'
  end
end

def twenty_one?(hand1, hand2 = [])
  if retrieve_hand_value(hand1) == 21 || retrieve_hand_value(hand2) == 21
    true
  else
    false
  end
end

def retrieve_hand_value(hand)
  value = 0
  hand.each do |card|
    if card == 'K' || card == 'Q' || card == 'J'
      value += 10
    elsif card == 'A'
      value = retrieve_ace_value(value)
    else
      value += card
    end
  end
  value
end

def retrieve_ace_value(current_total)
  if current_total > 10
    current_total + 1
  else
    current_total + 11
  end
end

def bust?(hand)
  retrieve_hand_value(hand) > 21
end

def display_winner(hand1, hand2)
  if retrieve_hand_value(hand1) == retrieve_hand_value(hand2)
    prompt "The dealer and the player have tied."
  else
    prompt "#{retrieve_winner(hand1, hand2)} wins!"
  end
end

def retrieve_winner(hand1, hand2)
  if bust?(hand1) || twenty_one?(hand2)
    'Dealer'
  elsif bust?(hand2) || twenty_one?(hand1)
    'Player'
  elsif retrieve_hand_value(hand1) > retrieve_hand_value(hand2)
    'Player'
  else
    'Dealer'
  end
end

def play_again?
  prompt "Would you like to play again? (Yes or no.)"
  answer = ' '
  loop do
    answer = gets.chomp.downcase
    break if answer == 'yes' || answer == 'y'
    break if answer == 'no' || answer == 'n'
    prompt "Please enter yes or no."
  end

  answer == 'yes' || answer == 'y'
end

system 'clear'
prompt "Welcome to Twenty-One!"
prompt "Are you ready to begin? (Enter yes or no.)"
answer = ' '
loop do
  answer = gets.chomp.downcase
  break if answer == 'y' || answer == 'yes'
  prompt "Enter 'yes' to begin."
end

loop do
  deck = initialize_deck
  players_hand = []
  dealers_hand = []

  initialize_hands(deck, players_hand, dealers_hand)
  display_hands(players_hand, dealers_hand)

  loop do
    break if twenty_one?(players_hand, dealers_hand)
    loop do
      answer = nil
      prompt "Hit or stay?"
      loop do
        answer = gets.chomp.downcase
        if answer == 'hit' || answer == 'stay'
          break
        else
          prompt "Please enter either 'hit' or 'stay'."
        end
      end

      break if answer == 'stay'

      draw(deck, players_hand)
      if bust?(players_hand)
        puts "You bust!"
        break
      elsif twenty_one?(players_hand)
        break
      end

      display_hands(players_hand, dealers_hand)
    end

    break if twenty_one?(players_hand) || bust?(players_hand)

    loop do
      break if retrieve_hand_value(dealers_hand) >= 17
      draw(deck, dealers_hand)
    end

    break
  end

  display_final_hands(players_hand, dealers_hand)
  display_winner(players_hand, dealers_hand)
  break unless play_again?
end
