
# input: integer
# output: integer that represents the index of the first number an array of fibonnaci 
#         numbers to have the amount of digits that correspond to the input integer 
# Rules: fibonacci number array is not given, must be built as it is checked in method
#        fibonacci numbers start with 1, 1, then each subequent number is the sum of the previus two numbers

# Data structures: array

# Algorithm
#---------------
# create an array calle fib_nums equal to [1, 1]
# set variable i to 2
# if given integer is 1, return 1
# in a loop
#      set fib_num[i] equal to fib_num[i - 1] and fib_num[i - 2]
#      check if given integer is equal fib_num[i].digits.length
#          if it is break loop
#      set i to i + 1
# return i - 1

def find_fibonacci_index_by_length(integer)
  fib_nums = [1, 1]
  i = 2
  loop do
    fib_nums[i] = fib_nums[i - 1] + fib_nums[i - 2]
    break if fib_nums[i].digits.length >= integer
    i += 1
    end
  i + 1 
end      

puts find_fibonacci_index_by_length(2) 
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
