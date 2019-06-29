
def swap(string)
  words = string.split.map! do |element| 
    zero_index_holder = element[0]
    end_index_holder = element[-1]

    element[0] = end_index_holder
    element[-1] = zero_index_holder

    element
  end 
  words.join(" ")
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'