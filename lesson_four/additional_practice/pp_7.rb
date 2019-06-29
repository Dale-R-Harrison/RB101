
statement = "The Flintstones Rock"
letters_hash = {}

statement.split.join.each_char do |char|
  if letters_hash[char] == nil
    letters_hash[char] = 1
  else
    letters_hash[char] += 1
  end
end

p letters_hash
