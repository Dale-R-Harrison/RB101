
def staggered_case(string, value = "upper")
  staggered_string = ""
  upper = true

  string.chars.each_with_index do |char, index|  
    if char =~ /[a-zA-Z]/  
      if upper 
        staggered_string << char.upcase
      else
        staggered_string << char.downcase
      end

      upper = !upper
    else
      staggered_string << char
    end
  end

  staggered_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

