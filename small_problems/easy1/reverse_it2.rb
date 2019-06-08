def reverse_words(string)
  temp_array = string.split
  
  temp_array.each do |i|
    i.reverse! if i.length >= 5 
  end
  
  temp_array.join(" ")

end

puts reverse_words('Professional')          
puts reverse_words('Walk around the block') 
puts reverse_words('Launch School')