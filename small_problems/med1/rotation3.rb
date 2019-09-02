
def rotate_rightmost_digits(int, limiter)
  digits = int.digits.reverse
  first = digits.length - limiter
  i = 0
  new_int = []
  loop do 
    if i == first
      i += 1
    else 
      new_int << digits[i]
      i += 1
    end
    break if i >= digits.length
  end
  new_int << digits[first]
  new_int.join.to_i
end

def max_rotation(int)
  first_digit = int.digits.length
  loop do
    break if first_digit == 0
    int = rotate_rightmost_digits(int, first_digit)
    first_digit -= 1
  end
  int
end

p max_rotation(735291)
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845