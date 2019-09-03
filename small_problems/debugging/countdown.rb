def decrease(counter)
  counter - 1
end

counter = 10

counter.times do # refactored to avoid redundancy
  puts counter
  counter = decrease(counter) # changed line to addignment
end

puts 'LAUNCH!'