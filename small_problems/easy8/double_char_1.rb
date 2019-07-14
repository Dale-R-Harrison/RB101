
def repeater(string)
  result = ''
  string.chars.each do |char|
    2.times { result << char }
  end

  result
end

p repeater('Hello')
