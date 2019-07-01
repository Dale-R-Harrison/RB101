
# input: two arrays
# output: one array, containg all the elements of two passed arrays

def merge(array_1, array_2)
  merged_array = []
  
  array_1.concat(array_2).each do |element|
    merged_array << element unless merged_array.include?(element)
  end
  
  merged_array
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
