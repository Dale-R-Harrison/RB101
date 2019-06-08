
def repeat (string, integer)
  i = 0
  until i == integer
    puts string
    i += 1
  end
end

repeat('Hello', 3)
repeat('World', 6)
repeat('Hello', 1)