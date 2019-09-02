
# input: array of multiple elements
# output: array with the first element of original array as the last element

#


def rotate_array(array)
  i = 1 
  new_array = []
  loop do 
    new_array << array[i]
    i += 1
    break if i >= array.length
  end
  new_array << array[0]
end

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]  
