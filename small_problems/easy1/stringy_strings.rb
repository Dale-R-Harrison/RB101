def stringy(length, starting = 1)
  if starting == 1 
    i = 1
  else starting == 0
    i = 2
  end

  string = String.new
  
  length.times do 
    if i.odd?
      string << "1"
    else
      string << "0"
    end
    i += 1
  end
  
  string

end

puts stringy(6) 
puts stringy(9, 0) 
puts stringy(4, 0) 
puts stringy(7) 