
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], 
       fourth: ['over', 'the', 'lazy', 'dog']}

vowel_string = ""
hsh.each do |_, value|
  value.each do |word|
    word.chars.each { |char| vowel_string << char if char =~ /[aeiou]/ }
  end
end

p vowel_string
