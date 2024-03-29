
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
STARTING_PLAYER = 'Choose'

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, spacer = ', ', last = 'or')
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

# rubocop:disable Metrics/AbcSize
def board_header
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts "The first to win 5 rounds wins the game!"
end

def display_board(brd)
  system 'clear'
  board_header
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square to place a piece: (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i

    break if empty_squares(brd).include?(square)
    prompt "Sorry, that is not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = if winning_move?(brd)
             winning_square(brd)
           elsif at_risk?(brd)
             risky_square(brd)
           elsif empty_squares(brd).include?(5)
             5
           else
             empty_squares(brd).sample
           end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd) == []
end

def round_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def display_round_totals(score1, score2)
  prompt "You have won #{score1} rounds. Computer has won #{score2} rounds."
  prompt "The first to win 5 rounds will win the game."
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

def display_game_results(score1, score2)
  prompt "You have won #{score1} rounds. Computer has won #{score2} rounds."
  if score1 >= 5
    prompt "You have won the game!"
  else
    prompt "Computer has won the game!"
  end
end

def game_won?(score1, score2)
  score1 >= 5 || score2 >= 5
end

def at_risk?(brd)
  WINNING_LINES.any? do |line|
    brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
      (brd.values_at(*line).any? { |e| e == INITIAL_MARKER })
  end
end

def risky_square(brd)
  square = nil
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 2
      line.each do |e|
        square = e if brd[e] == ' '
      end
    end
  end

  square
end

def winning_move?(brd)
  WINNING_LINES.any? do |line|
    brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
      (brd.values_at(*line).any? { |e| e == INITIAL_MARKER })
  end
end

def winning_square(brd)
  square = nil
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 2
      line.each do |e|
        square = e if brd[e] == ' '
      end
    end
  end

  square
end

def place_piece!(board, current_player)
  if current_player == 'Player'
    player_places_piece!(board)
  elsif current_player == 'Computer'
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  current_player == 'Player' ? 'Computer' : 'Player'
end

def initialize_player
  if STARTING_PLAYER == 'Choose'
    answer = nil
    prompt "Let's play Tic Tac Toe!"
    prompt "Enter '1' to play first. Enter '2' to let Computer play first."
    loop do
      answer = gets.chomp
      break if answer == '1' || answer == '2'
      prompt "Incorrect selection. Enter '1' or '2'"
    end
    answer == '1' ? 'Player' : 'Computer'
  else
    STARTING_PLAYER
  end
end

def greeting(player)
  prompt "Welcome to Tic Tac Toe!"
  prompt "#{player} will make the first move."
  prompt "Are you ready to begin? (Enter 'yes' to begin):"
  loop do
    answer = gets.chomp.downcase
    break if answer == 'yes' || answer == 'y'
    prompt "I'm sorry, you must enter 'yes' to begin."
  end
end

def play_again?
  answer = false
  prompt "Play again? (yes or no)"
  loop do
    answer = gets.chomp.downcase
    break if answer == 'yes' || answer == 'no'
    prompt "I'm sorry. Please enter either 'yes' or 'no'."
  end

  answer == 'yes'
end

loop do
  system 'clear'
  player_score = 0
  computer_score = 0
  plays_first = initialize_player
  greeting(plays_first)

  loop do
    board = initialize_board
    current_player = plays_first

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if round_won?(board) || board_full?(board)
    end

    display_board(board)

    if round_won?(board)
      prompt "#{detect_winner(board)} won!"
      if detect_winner(board) == 'Player'
        player_score += 1
      else
        computer_score += 1
      end
    else
      prompt "It's a tie!"
    end

    if game_won?(player_score, computer_score)
      display_game_results(player_score, computer_score)
      break
    else
      display_round_totals(player_score, computer_score)
    end
  end

  break unless play_again?
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
