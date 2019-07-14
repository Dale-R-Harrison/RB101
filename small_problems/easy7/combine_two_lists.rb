

# original solution
# def interleave(array_1, array_2)
#   combined_array = []
#   counter = 0
#
#   array_1.length.times do 
#     combined_array << array_1[counter]
#     combined_array << array_2[counter]
# 
#     counter += 1
#   end
# 
#   combined_array
# end

# further exploration
def interleave(array_1, array_2)
  array_1.zip(array_2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
