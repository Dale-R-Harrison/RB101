
# When we modify an array while iterating over it, if this modifies the length of the array
# it can have unintended effect. This is because the index is used to iterate and when elements
# are removed or added, the index of remaining elements are changed. For example, the given code:

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# outputs 1, 3 and removes the first two elements of the array. Not all elements are
# iterated over because the index becomes prematurely larger than array's length. 

# By contrast, in the given code: 

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1 and 2 are ouputted and the last two elements are removed before they can be iterated over. 