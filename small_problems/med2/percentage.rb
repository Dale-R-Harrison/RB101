
def letter_percentages(string)
  total = string.size
  percent_hash = {uppercase: 0, lowercase: 0, neither: 0}
  uppercase = 0.0
  lowercase = 0.0
  neither = 0.0

  string.each_char do |c|
    if c =~ /[a-z]/
      lowercase += 1
    elsif c =~ /[A-Z]/
      uppercase += 1
    else
      neither += 1
    end
  end

  percent_hash[:uppercase] = (uppercase / total) * 100
  percent_hash[:lowercase] = (lowercase / total) * 100
  percent_hash[:neither] = (neither / total) * 100
  percent_hash
end 

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }