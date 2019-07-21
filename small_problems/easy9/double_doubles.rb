
def twice(integer)
  dig_arr = integer.digits.reverse
  first_half = []
  second_half = []

  dig_arr.each_with_index do |element, index|
    if index < dig_arr.length / 2
      first_half << element
    else
      second_half << element
    end
  end

  integer *= 2 unless first_half == second_half
  integer
end

p twice(37) 
p twice(44) 
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
