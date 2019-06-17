
puts "Please enter an integer greater than 0: "
int = gets.chomp.to_i

puts "Enter 's' to compute the sum, or 'p' to compute the product."
ans = ''
loop do
  ans = gets.chomp.downcase
  if ans == 's' || ans == 'p'
    break
  else
    puts "Sorry, invalid input. Please enter 's' or 'p'."
  end
end

if ans == 's'
  sum = (1..int).inject { |sum, n| sum + n }
  puts "The sum of the integers is #{sum}."
elsif ans == 'p'
  product = (1..int).inject { |product, n| product * n }
  puts "The product of the integers is #{product}."
end
