
# input: two arrays of integers
# output: an array of the products of every pairing of elements between on array 
#         and the other

# Data structures: arrays

# Algorithm
# -------------
# iterate through every element of array 1
#      for each elemetns, iterate through array 2, saving the sum of both elements to new array
# sort array
# return new aray

def multiply_all_pairs(array1, array2)
  products_array = []

  array1.each do |first_element|
    array2.each do |second_element| 
      products_array << first_element * second_element
    end
  end

  products_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
