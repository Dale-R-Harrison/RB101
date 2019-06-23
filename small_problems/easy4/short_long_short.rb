
def short_long_short(string1, string2)
  length_string1 = string1.length
  length_string2 = string2.length

  if length_string1 > length_string2
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh') 
puts short_long_short('', 'xyz') 