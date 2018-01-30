def find_fibonacci_index_by_length(digits)
  fib_arr = [0, 1]
  loop do
    break if fib_arr.last.to_s.size >= digits
    prev, curr = fib_arr.last(2)
    fib_arr.push(prev + curr)
  end
  fib_arr.size - 1
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
