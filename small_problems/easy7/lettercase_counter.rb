
# input: a string of one or more characters
# output: a hash with three key value pairs, representing number of lowercase letters, 
#         number of uppercase characters, and number of other characters in string.

# Data structures: strings, hashes, arrays

# Algorithm
# -----------
# create a new hash with three values set to zero
# iterate through each character in string
#       if character is uppercase, increment uppercase up by 1
#       if character is lowercase, increment lowercase by 1
#       if character is neiter, increment neither up by 1
# return hash

def letter_case_count(string)
  counts = {lowercase: 0, uppercase: 0, neither: 0}

  string.each_char do |char|
    if ("a".."z").include? char
      counts[:lowercase] += 1
    elsif ("A".."Z").include? char
      counts[:uppercase] += 1
    else
      counts[:neither] +=1
    end
  end

  counts
end 

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
