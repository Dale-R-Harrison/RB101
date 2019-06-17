
def xor?(bool1, bool2)
  if bool1 == true && bool2 == true
    return false
  elsif bool1 == false && bool2 == false
    return false
  else
    return true
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false