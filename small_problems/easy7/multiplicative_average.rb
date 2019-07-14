
# input: an array of integers
# output : the result of multiplying all elements of array and dividing 
#          by the number of elements. Round to 3 decimal places

# Data Structures: arrays

# Algorithm
# ------------
# Find the sum of all elements of the array
# Divide this sum by 3.0
# Format to round to three zeros

def show_multiplicative_average(array)
  product = array.reduce(:*).to_f
  average = (product / array.length).round(3)

  puts "The result is #{format("%.3f", average)}" 
end

show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
