# orgiginal solution
def leap_year?(year)
  leap_year = false
    if year % 100 == 0
      if year % 400 == 0
        leap_year = true
      end
    else leap_year = true
    end
  end
  leap_year
end

puts leap_year?(2016)
puts leap_year?(2015) 
puts leap_year?(2100) 
puts leap_year?(2400) 
puts leap_year?(240000) 
puts leap_year?(240001) 
puts leap_year?(2000) 
puts leap_year?(1900) 
puts leap_year?(1752) 
puts leap_year?(1700) 
puts leap_year?(1) 
puts leap_year?(100) 
puts leap_year?(400) 