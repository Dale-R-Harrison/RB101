
def halvsies(array)
  half = 0
  if array.size.odd?
    half = array.size / 2 + 1
  else
    half = array.size / 2
  end

  first_array = array.slice(0, half)
  second_array = array.slice(half, array.size - half)
  [first_array, second_array]
end

p halvsies([1, 2, 3, 4]) 
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
