
def substrings_at_start(string)
  sub_strings = []
  substring = ''

  string.length.times do |i|
    substring = substring + string[i]
    sub_strings << substring
  end

  sub_strings
end

def substrings(string)
  substrings = []
  string.length.times do |i|
    substrings << substrings_at_start(string.slice(i..-1))
  end

  substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
