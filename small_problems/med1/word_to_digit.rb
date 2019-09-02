
DIGITS = {
  'one' => 1,
  'two' => 2,
  'three' => 3,
  'four' => 4,
  'five' => 5,
  'six' => 6,
  'seven' => 7,
  'eight' => 8,
  'nine' => 9,
  'one.' => '1.',
  'two.' => '2.',
  'three.' => '3.',
  'four.' => '4.',
  'five.' => '5.',
  'six.' => '6.',
  'seven.' => '7.',
  'eight.' => '8.',
  'nine.' => '9.'
}

def word_to_digit(string)
  new_string = []
  string.split.each do |word|
    if DIGITS.keys.include?(word)
      new_string << DIGITS[word]
    else
      new_string << word
    end
  end
  new_string.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'