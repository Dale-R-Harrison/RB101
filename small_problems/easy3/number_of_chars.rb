
puts "Please write a word or multiple words: "
string = gets.chomp

# original solution:
# number_of_chars = string.split.join.length

number_of_chars = string.delete(' ').length
puts "There are #{number_of_chars} characters in \"#{string}\""