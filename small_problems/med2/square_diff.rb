
def sum_square_difference(num)
  sum = 0
  sum_square = 0
  square_sum = 0

  (1..num).each do |n| 
    sum += n
    square_sum += n ** 2
  end
  sum_square = sum ** 2

  sum_square - square_sum
end

p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150