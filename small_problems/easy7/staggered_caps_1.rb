
def staggered_case(string)
  staggered_string = ""
  string.chars.each_with_index do |char, index|
    if index.odd? 
      staggered_string << char.downcase
    else
      staggered_string << char.upcase
    end
  end

  staggered_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
