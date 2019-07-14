
def center_of(string)
  mid = (string.length / 2)
  if string.length % 2 == 0
    string[mid - 1] + string[mid]
  else
    string[mid]
  end
end

p center_of('I love ruby') 
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'