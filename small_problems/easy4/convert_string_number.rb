CHAR_TO_DIGIT = {"0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9
}

def string_to_integer(string)
  digit_array = []
  char_array = string.chars

  char_array.each do |element|
    digit_array << CHAR_TO_DIGIT[element]
  end

  digit_array.reverse!
  digit_array.each_with_index do | element, i |
    digit_array[i] = (element * (10 ** i))
  end

  digit_array.reduce(:+)
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
