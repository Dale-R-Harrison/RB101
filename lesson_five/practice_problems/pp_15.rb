
# Algorithm
# --------------
# Iterate through each element of the outher array (hashs)
# check each value in the hash 

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hsh|
  hsh.values.flatten.all? { |int| int % 2 == 0 }
end
    
p new_arr
