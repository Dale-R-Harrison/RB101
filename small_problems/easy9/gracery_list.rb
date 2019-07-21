
def buy_fruit(arr)
  result =[]

  arr.each do |arr|
    arr[1].times { result << arr[0] }
  end
  
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
