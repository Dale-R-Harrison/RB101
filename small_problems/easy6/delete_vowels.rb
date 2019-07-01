
# Input: an array of strings
# Output: an array of the same strings, but with vowels removed

# Rules: returned array must be same size as original
#        strings must not have any vowels

# Data Structure: Arrays, Strings

#Algorithm
#------------
# iterating through each string in array:
#      remove values from string
#       set string with removed vowels to the equivalent index of a new array
# return new array 

def remove_vowels(array)
  array.map { |string| string.delete("aeiouAEIOU") }
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']