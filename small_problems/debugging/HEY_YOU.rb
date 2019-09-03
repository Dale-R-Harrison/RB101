def shout_out_to(name)
  name.upcase! # changed chained method call to a single #upcase! call 

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'