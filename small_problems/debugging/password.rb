
password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp # refactored for redundancy
end

def verify_password(password) # modified method def to include a parameter so method will take an argument
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password # added assignment so that set_password's return value is used properly
end

verify_password(password) #passed password variable into method as argumentd