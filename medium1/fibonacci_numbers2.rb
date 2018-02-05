def fibonacci(n)
  counter = 2
  last, current = [1, 1]
  loop do
    break if counter == n
    last, current = [current, current + last]
    counter += 1
  end
  current
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
