DIGITS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

def signed_integer_to_string(integer)
  result = String.new
  if integer < 0
    sign = "-"
    integer = integer + (integer * -2)
  elsif integer > 0
    sign = "+"
  else
    sign = ""
  end

  result = ""
  loop do
    result.prepend(DIGITS[integer % 10])
    
    integer = integer / 10
    break if integer == 0
  end
  result.prepend(sign)
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'