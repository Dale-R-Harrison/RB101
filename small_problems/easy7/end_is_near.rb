
def penultimate(string)
  words_array = string.split
  words_array[words_array.length - 2]
end

p penultimate('last word')
p penultimate('Launch School is great!') == 'is'
