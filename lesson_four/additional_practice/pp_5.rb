
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
first = nil
index = 0

loop do 
  break if index >= flintstones.length
  if flintstones[index].start_with?("Be")
    first = flintstones[index]
    break
  end
  index += 1
end


puts first
