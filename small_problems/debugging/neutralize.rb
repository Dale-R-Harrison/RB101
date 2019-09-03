
def neutralize(sentence)
  words = sentence.split(' ')
  positive_words = []
  
  # previous implementation of loop modified array while iterating through it
  # modified implementation to avoid mutating array
  words.each do |word|  
    positive_words << word unless negative?(word)
  end

  positive_words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
