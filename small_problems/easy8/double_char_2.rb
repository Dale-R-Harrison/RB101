

def double_consonants(string)
  result = ''
  string.chars.each do |char|
    if char =~ /[^aieou]/ && char =~ /[A-Za-z]/
      2.times { result << char }
    else
      result << char
    end
  end

  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
