
# input: an array
# output: the same array with its elements reversed

# Data structures: arrays

# Algorithm
#------------
# iterate through each element of array
#     prepend element to new array
# iterate through array again
#      set array[i] = new_array[i]
# retunr array

def reverse!(array)
  temp_array = []
  array.each { |element| temp_array.unshift(element) }
  array.each_index { |index| array[index] = temp_array[index] }
  
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result
p result == [4, 3, 2, 1]
p list
p list == [4, 3, 2, 1]
p list.object_id == result.object_id