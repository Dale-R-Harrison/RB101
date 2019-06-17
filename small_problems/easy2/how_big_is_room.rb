
SQ_FT_TO_SQ_INCHES = 12
SQ_FT_TO_SQ_CM = 30.48

puts "Enter the length of the room in feet: "
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

sq_ft = (length * width).round(2)
sq_inches = (sq_ft * SQ_FT_TO_SQ_INCHES).round(2)
sq_cm = (sq_ft * SQ_FT_TO_SQ_CM).round(2)

puts "The are of the room is #{sq_ft} square feet."
puts "This is equivalent to #{sq_inches} square inches " + \
     "or #{sq_cm} square centimeters."
