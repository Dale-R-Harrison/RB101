
def staggered_case(string, value = "upper")
  staggered_string = ""
  if value == "upper"
    upper = true
  elsif value == "lower"
    upper == false
  end

  string.chars.each_with_index do |char, index|
    if upper 
      staggered_string << char.upcase
    else
      staggered_string << char.downcase
    end

    upper = !upper
  end

  staggered_string
end

p staggered_case('I Love Launch School!')
p staggered_case('I Love Launch School!', "lower")
