
def greetings(name_arr, occ_hash)
  name = "Hello, #{name_arr.join(' ')}!" 
  occ = "Nice to have a #{occ_hash[:title]} #{occ_hash[:occupation]} around."
  puts "#{name} #{occ}"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
