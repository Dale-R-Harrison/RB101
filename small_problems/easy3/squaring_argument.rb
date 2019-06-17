
def multiply(num1, num2)
  num1 * num2
end

def exponent(num, power)
  i = 2
  result = num
  loop do  
    result = multiply(result, num)
    i += 1
    if i > power
      return result
    end
  end
end

puts exponent(5, 5) == 3125
