
def swap_name(string)
  "#{string.split[1]}, #{string.split[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
