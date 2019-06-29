
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
minimum_age = ages.values[0]

ages.values.each do |value|
  minimum_age = value if value < minimum_age 
end

puts minimum_age
