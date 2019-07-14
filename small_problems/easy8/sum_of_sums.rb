
# input: array on integers
# output: sum of the sums of each leading subsequence

# data structures: arrays

# algorithm
# -------------------
#  each with index
#      set variable to zero
#      set a vcounter variable to zero
#      loop an index number of times
#           variable += array[counter]
#           counter += 1
#       

def sum_of_sums(array)
  elements = 1
  sums = 0 
  
  array.each_with_index do |element, index| 
    counter = 0
    inner_sum = 0
    (index + 1).times do
      inner_sum += array[counter]
      counter += 1
    end

    sums += inner_sum
  end

  sums
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35