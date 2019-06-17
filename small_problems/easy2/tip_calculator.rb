
puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f / 100

tip = (bill * tip_percent)
total = bill + tip

puts "The tip is $#{format("%.2f", tip)}."
puts "The total is $#{format("%.2f", total)}."
