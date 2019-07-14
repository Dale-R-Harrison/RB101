
def substrings_at_start(string)
  sub_strings = []
  substring = ''

  string.length.times do |i|
    substring = substring + string[i]
    sub_strings << substring
  end

  sub_strings
end

p substrings_at_start('abc')
