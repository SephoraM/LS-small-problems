def bubble_sort!(arr)
  tail = arr.size - 1
  loop do
    temp_arr = arr.dup
    temp_arr.each_with_index do |_, i|
      next if i.zero? || i > tail
      arr[i - 1], arr[i] = arr[i], arr[i - 1] if arr[i - 1] > arr[i]
    end
    return arr if temp_arr == arr
    tail -= 1
  end
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
