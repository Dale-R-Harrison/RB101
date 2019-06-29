
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce)
  produce_keys = produce.keys
  selected_pairs = {}
  counter = 0

  loop do
    break if counter >= produce_keys.size
    current_key = produce_keys[counter]

    if produce[current_key] == 'Fruit'
      selected_pairs[current_key] = 'Fruit'
    end

    counter += 1
  end

  selected_pairs
end

p select_fruit(produce)
