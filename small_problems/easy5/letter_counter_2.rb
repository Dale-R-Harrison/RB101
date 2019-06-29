
def word_sizes(string)
  sizes = Hash.new
  string = string.split.each do |element|
    word = element.delete "^a-zA-Z"
    size = word.length
    if sizes[size] == nil
      sizes[size] = 1
    else
      sizes[size] += 1
    end
  end
  sizes
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}