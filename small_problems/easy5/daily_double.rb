
def crunch(string)
  clean_string = ""
  string.chars.each_with_index do |element, i|
    if i > 0
      clean_string << element unless element == string[i - 1]
    else
      clean_string << element
    end
  end
  clean_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

