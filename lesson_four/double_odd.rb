
def double_odd_index(numbers)
  counter = 0
  doubled_numbers = []

  loop do
    break if counter >= numbers.size
    current_number = numbers[counter]

    if counter.odd?
      current_number *= 2
    end

    doubled_numbers << current_number
    counter += 1
  end

doubled_numbers
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_index(my_numbers)
