
puts "Please give me a name: "
name = gets.chomp
if name == ''
  name = "Teddy"
end

age = rand(20..200)

puts "#{name} is #{age} years old."
