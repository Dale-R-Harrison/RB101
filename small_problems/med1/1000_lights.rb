
def toggle_switches(int)
  switches = {}
  i = 1
  
  int.times do 
    switches[i] = false
    i += 1
  end

  i = 1
  int.times do
    switch = i
    loop do
      switches[switch] = !switches[switch]
      switch += i
      break if switch > switches.length
    end
    i += 1
  end

  switches.select {|_, v| v == true}.keys
end

p toggle_switches(10)