
def valid_triangle?(num1, num2, num3)
  sides = [num1, num2, num3]
  valid = false

  if sides.reduce(:+) == 180 && sides.all? { |side| side > 0 }
    valid = true
  end
  valid
end

def triangle(num1, num2, num3)
  return :invalid if valid_triangle?(num1, num2, num3) == false
  sides = [num1, num2, num3]

  if sides.any? { |side| side == 90 }
    :right
  elsif sides.any? { |side| side > 90 }
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid