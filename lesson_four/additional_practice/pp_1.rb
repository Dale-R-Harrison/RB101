
# p: 
# input: flinstones array
# output: hash with each element of array as key, and index of said element as value
#
#E: {"Fred" => 0, "Barney"=> 1, "Wilma" => 2, "Betty" => 3, "Pebbles" => 4, "BamBam" => 5}
#
#D: arrays, hashes
#
# Algorith,: iterate through each element, set Hash[element] = index


flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash ={}

flintstones.each_with_index do |element, index|
  flintstones_hash[element] = index
end


p flintstones_hash