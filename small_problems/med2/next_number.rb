
def unique_digits?(num)
  num.digits.all? { |n| num.digits.count(n) == 1 }
end

def featured(num)
  loop do 
    if num >= 9_876_543_210
      puts "There is no number which fits requirements."
      return
    end
    num += 1
    break if num % 7 == 0 && num.odd? && unique_digits?(num)
  end

  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987