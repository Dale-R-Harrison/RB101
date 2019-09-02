# check if triangle is valid
#check what type of triangle it is

# valid alg
# create array of sides
# check if any num is less than 0
#        if one is, return false
# select largest number out of array
# add remaining two nums in array together, compare to largest
# if greater, return true, else, return false



def valid?(num1, num2, num3)
  sides = [num1, num2, num3]

  long_side = sides.slice!(sides.index(sides.max))
  sum_of_short = sides.reduce(:+)

  long_side < sum_of_short
end

def triangle(num1, num2, num3)
  return :invalid if valid?(num1, num2, num3) == false
  sides = [num1, num2, num3]

  if sides.count(sides[0]) == 3
    :equilateral
  elsif sides.any? { |side| sides.count(side) == 2 }
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
