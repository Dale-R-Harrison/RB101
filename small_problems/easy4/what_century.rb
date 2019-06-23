def century(year)
  special_suffix = { 1 => "st", 2 => "nd", 3 => "rd" }
  
  century = year / 100
  century += 1 unless year % 100 == 0
  digits_array = century.digits
  
  #if digits_array[0] == 1 || digits_array[0] == 2 || digits_array[0] == 3
  if (1..3).include?(digits_array[0])
    if digits_array[1] != 1 || digits_array[1] == nil
      century = century.to_s + special_suffix[digits_array[0]]
    else
      century = century.to_s + "th"
    end
  else
    century = century.to_s + "th"
  end 
  century
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)