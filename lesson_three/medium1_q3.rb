
def factors(number)
  divisor = number
  factors = []
  if divisor <= 0
    return factors
  else
    while divisor != 0
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end until divisor == 0
    return factors
  end
end

p factors(20)
p factors(85)
p factors(0)
p factors(-10)
