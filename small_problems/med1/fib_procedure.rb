
def fib(num)
  num1 = 1
  num2 = 1
  fib_num = 0

  (num - 2).times do
    break if num < 3
    fib_num = num1 + num2
    num1 = num2
    num2 = fib_num
  end

  fib_num
end

p fib(100) == 354224848179261915075