
def make_hash(arr)
  new_hash = {}
  arr.each do |array|
    new_hash[array[0]] = array[1]
  end
  new_hash
end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

p make_hash(arr)
