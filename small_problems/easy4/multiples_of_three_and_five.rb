
def multisum(integer)
  multiples = []
  
  (1..integer).each do |element|
    if element % 3 == 0 || element % 5 == 0
      multiples << element
    end
  end
  
  multiples.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
