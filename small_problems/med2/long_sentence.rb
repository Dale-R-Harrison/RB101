
file = File.read("example.txt")

sentences = file.split(/[.!?]/)

longest = sentences[0]

sentences.each do |string|
  if string.length > longest.length
    longest = string
  end
end

p longest
