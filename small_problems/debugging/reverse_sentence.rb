
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    # below line previously attempted to concatenate a string and array. 
    # changed to #unshift method call to achieve desired result
    reversed_words.unshift(words[i]) 
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'