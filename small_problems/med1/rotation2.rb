
# method takes a multidigit number, and a second integer as arguments
# outputs multidigit integer with the last n (second argument = n) digits rotated

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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917