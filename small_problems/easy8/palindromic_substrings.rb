
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

def palindromes(string)
  string_array = substrings(string).select do |substring|
    substring == substring.reverse && substring.length > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]