

def reverse(array)
  new_array = []
  array.each { |element| new_array.unshift(element) }
  new_array
end

puts reverse([1,2,3,4]) == [4,3,2,1]          
puts reverse(%w(a b e d c)) == %w(c d e b a)  
puts reverse(['abc']) == ['abc']              
puts reverse([]) == []   

