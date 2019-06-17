
def oddities(array)
  i = 1
  odd_array = Array.new
  
  array.each do |element|
    if i.odd?
      odd_array << element
    end
    
    i += 1
  end
  odd_array
end

def evens(array)
  i = 0
  even_array = Array.new
  
  loop do 
    if i.odd?
      even_array << array[i]
    end
    
    i += 1
    break if i >= array.length
  end
  even_array
end

p oddities([2, 3, 4, 5, 6]) 
p evens([1, 2, 3, 4, 5, 6]) 
p evens(['abc', 'def']) 
p oddities([]) == []
