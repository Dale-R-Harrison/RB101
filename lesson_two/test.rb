def number?(input)
  input.to_i.to_s == input || input.to_f.to_s == input
end

puts number?("4.56")
puts number?("0")
puts number?("0.1")
puts number?("66")
puts number?("hello")