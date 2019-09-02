
# Algorithm
# -------------
# initialize an index variable as 1
# enter a loop 
# initialize a spaces variable as given integer - i
# put ' ' * spaces + '*' * i + ' ' * spaces
# increment i by one
# break if i > gien integer
# end

def diamond(int)
  i = 1
  spaces = (int - 1) / 2
  loop do
    puts " " * spaces + "*" * i + " " * spaces 
    i +=2
    spaces -= 1
    break if i > int
  end

  i -= 2
  spaces += 1  

  loop do 
    i -= 2
    spaces += 1
    puts " " * spaces + "*" * i + " " * spaces
    break if i <= 1
  end
end

diamond(3)
diamond(9)