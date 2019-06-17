
current_year = Time.new.year

puts "What is your age?"
age = gets.chomp.to_i

puts "What age would you like to retire?"
retire_age = gets.chomp.to_i

time_left = retire_age - age
retire_year = current_year + time_left

puts "It's #{current_year}. You will retire in #{retire_year}"
puts "You only have #{time_left} years of work to go!"
