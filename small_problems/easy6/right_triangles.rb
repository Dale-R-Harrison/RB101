# input: 1 integer
# output: a series of strings such that they form a right triangle of stars, each side equal 
#         inout integer

# Rules: right justified triangle - hypotenuse starts on bottom left and ends on upper right

# Data Structures: strings

# Algorithm
# ----------------
# set counter to 1 
# begin a loop
#        print (' ' * stringlength - counter) + ('*' * counter)
#        increment counter by 1
#        end loop when counter equals integer

def triangle(integer)
  stars = 1
  integer.times do 
    puts " " * (integer - stars) + ("*" * stars)
    stars += 1
  end
end

triangle(5)
triangle(9)
