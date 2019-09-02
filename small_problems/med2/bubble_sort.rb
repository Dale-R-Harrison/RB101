
def bubble_sort!(array)
  loop do
    i = 0
    checked_i = 1
    swaps = 0
    
    loop do
      if (array[i] <=> array[checked_i]) == 1
        array[i], array[checked_i] = array[checked_i], array[i]
        swaps += 1
      end
      
      i += 1
      checked_i += 1

      break if checked_i >= array.size 
    end

    break if swaps == 0
  end

  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)