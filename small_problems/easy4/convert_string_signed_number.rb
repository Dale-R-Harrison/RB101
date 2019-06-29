
CHAR_TO_DIGIT = {"0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "-" => "-",
  "+" => "+"
}

def string_to_signed_integer(string)
  digits = string.chars.map { |i| CHAR_TO_DIGIT[i] }
  if digits[0] == "+" || digits[0] == "-"
    sign = digits.shift
  end

  value = 0
  digits.each { |element| value = 10 * value + element }
  if sign == "-"
    value = value - value * 2
  end

  value
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100