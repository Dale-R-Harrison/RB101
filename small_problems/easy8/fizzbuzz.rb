
def fizzbuzz(first_int, second_int)
  results = []
  (first_int..second_int).each do |num|
    if num % 3 == 0 && num % 5 == 0
      results << 'FizzBuzz'
    elsif num % 3 == 0
      results << 'Fizz'
    elsif num % 5 == 0
      results << 'Buzz'
    else
      results << num.to_s
    end
  end

  puts results.join(', ')
end

fizzbuzz(1, 15)
