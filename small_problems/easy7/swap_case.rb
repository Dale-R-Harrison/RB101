
def swapcase(string)
  swapped_string = ""
  string.each_char do |char| 
    if ('A'..'Z').include?(char)
      swapped_string << char.downcase
    elsif ('a'..'z').include?(char)
      swapped_string << char.upcase
    else
      swapped_string << char
    end
  end
  
  swapped_string
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
