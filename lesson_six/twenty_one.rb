
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

ROUND_LIMIT = 5
BUST_LIMIT = 21
DEALER_LIMIT = 17

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

def display_game_state(hand1, hand2, total)
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
  prompt "The current value of your hand is : #{total}."
end

def display_final_hands(hand1, hand2)
  players_cards = joiner(hand1.map { |e| FACES[e] })
  dealers_cards = joiner(hand2.map { |e| FACES[e] })

  system 'clear'
  prompt "Final results: "
  puts "-------------------"
  prompt "Dealer has: #{dealers_cards}."
  prompt "You have: #{players_cards}"
end

def display_final_total(total1, total2)
  prompt "Dealer's final total is: #{total2}."
  prompt "Your final total is: #{total1}"
  puts "-------------------"
  if bust?(total1)
    prompt 'You busted!'
  elsif bust?(total2)
    prompt 'Dealer busted!'
  end
end

def twenty_one?(total)
  total == BUST_LIMIT
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
  if current_total > BUST_LIMIT - 11
    current_total + 1
  else
    current_total + 11
  end
end

def bust?(total)
  total > BUST_LIMIT
end

def display_round_winner(total1, total2)
  result = retrieve_round_winner(total1, total2)
  if result == 'Tied'
    prompt "The dealer and the player have tied."
  else
    prompt "#{result} wins!"
  end
end

def tie?(total1, total2)
  total1 == total2
end

def won_by_score?(total1, total2)
  winning_score = total1 > total2 || twenty_one?(total1)
  winning_score && bust?(total1) == false
end

def retrieve_round_winner(total1, total2)
  if tie?(total1, total2)
    'Tied'
  elsif bust?(total2) || won_by_score?(total1, total2)
    'Player'
  else
    'Dealer'
  end
end

def play_again?(answer)
  answer == 'yes' || answer == 'y'
end

def valid_play_again?(answer)
  valid_answers = %w(yes y n no)
  valid_answers.include?(answer)
end

def retrieve_play_again
  prompt "would you like to play again? (Yes or no.)"
  answer = ' '
  loop do
    answer = gets.chomp.downcase
    break if valid_play_again?(answer)
    prompt "Please enter yes or no."
  end

  answer
end

def round_end_message(score1, score2)
  prompt "You have won #{score1} rounds. Dealer has won #{score2} rounds."
  prompt "The first to win #{ROUND_LIMIT} rounds will win the game."
  prompt "Are you ready for the next round?: "

  loop do
    round_answer = gets.chomp.downcase
    if round_answer == 'yes' || round_answer == 'y'
      break
    else
      prompt "Enter 'yes' to continue: "
    end
  end
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

def retrieve_winner(player_rounds)
  if player_rounds >= ROUND_LIMIT
    'Player'
  else
    'Dealer'
  end
end

def display_winner(round_total1)
  winner = retrieve_winner(round_total1)
  prompt "#{winner} has wone the game!"
end

def stay?(answer)
  answer == 'stay' || answer == 's'
end

def valid_answer?(answer)
  valid_answers = %w(stay s hit h)
  valid_answers.include?(answer)
end

def retrieve_hit_or_stay
  prompt "Hit or stay?"
  answer = ' '
  loop do
    answer = gets.chomp.downcase
    break if valid_answer?(answer)
    prompt "Please enter either 'hit' or 'stay'."
  end

  answer
end

loop do
  dealer_rounds = 0
  player_rounds = 0
  loop do
    deck = initialize_deck
    players_hand = []
    dealers_hand = []

    initialize_hands(deck, players_hand, dealers_hand)
    player_total = retrieve_hand_value(players_hand)
    dealer_total = retrieve_hand_value(dealers_hand)
    display_game_state(players_hand, dealers_hand, player_total)

    loop do
      break if twenty_one?(player_total)
      loop do
        break if stay?(retrieve_hit_or_stay)

        draw(deck, players_hand)
        player_total = retrieve_hand_value(players_hand)

        if bust?(player_total)
          puts "You bust!"
          break
        elsif twenty_one?(player_total)
          break
        end

        display_game_state(players_hand, dealers_hand, player_total)
      end

      player_total = retrieve_hand_value(players_hand)
      break if twenty_one?(player_total) || bust?(player_total)

      loop do
        dealer_total = retrieve_hand_value(dealers_hand)
        break if dealer_total >= DEALER_LIMIT
        draw(deck, dealers_hand)
      end

      break
    end

    player_total = retrieve_hand_value(players_hand)
    dealer_total = retrieve_hand_value(dealers_hand)
    display_final_hands(players_hand, dealers_hand)
    display_final_total(player_total, dealer_total)
    display_round_winner(player_total, dealer_total)

    winner = retrieve_round_winner(player_total, dealer_total)
    if winner == 'Player'
      player_rounds += 1
    elsif winner == 'Dealer'
      dealer_rounds += 1
    end
    break if dealer_rounds >= ROUND_LIMIT || player_rounds >= ROUND_LIMIT
    round_end_message(player_rounds, dealer_rounds)
  end

  display_winner(player_rounds)
  break unless play_again?(retrieve_play_again)
end

prompt "Thank you for playing Twenty-One!"
