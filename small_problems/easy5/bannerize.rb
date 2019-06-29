
def print_in_box(string)
  if string.length > 80
    string.slice!(79..-1)
  end

  inner_length = string.length + 2
  puts "+" + ("-" * inner_length) + "+"
  puts "|" + (" " * inner_length) + "|"
  puts "|" + string.center(inner_length) + "|"
  puts "|" + (" " * inner_length) + "|"
  puts "+" + ("-" * inner_length) + "+"
end

print_in_box("Hello Friend")
print_in_box('To boldly go where no one has gone before.')
print_in_box('')
