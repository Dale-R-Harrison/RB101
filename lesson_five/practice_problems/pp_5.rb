
# input: munsters hash
# output: integer representing total age of all male members of family

# algorithm
# iterate through hash selecting those whose "gender" value is "male", adding to new haash
# iterate through each element of this new hash, adding the value of the "age" key to a sum variable
# return this sum


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

sum = 0
munsters.select{ |_, hash| hash["gender"] == "male" }.each do |_, hash|
  sum += hash["age"]
end
p sum