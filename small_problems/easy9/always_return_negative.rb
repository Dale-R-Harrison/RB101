
def negative(integer)
  integer > 0 ? integer - (integer * 2) : integer
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 
