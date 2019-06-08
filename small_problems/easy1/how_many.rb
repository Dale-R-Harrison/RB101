def count_occurrences(arr)
  occur = Hash.new
  arr.each do |i|
    key = i.to_s
    if occur.has_key?(key)
      occur[key] += 1
    else 
      occur[key] = 1
    end
  end
  occur.each_pair { | key, value | puts "#{key} => #{value}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)



