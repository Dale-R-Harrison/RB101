
# original solution
# (1..99).each { |i| puts i if i % 2 != 0}

# further exploration solution
i = 1
while i <= 99
  puts i if i.odd?
  i += 1
end