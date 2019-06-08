def average(array)
  
  sum = 0
  array.each do |i|
    sum = sum + i
  end

  sum.to_f / array.length
end

puts average([1, 5, 87, 45, 8, 8]) 
puts average([9, 47, 23, 95, 16, 52])