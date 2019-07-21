
def uppercase?(string)
  string.delete('^a-zA-Z').chars.all?(/[A-Z]/)
end

p uppercase?('t')
p uppercase?('T')
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true