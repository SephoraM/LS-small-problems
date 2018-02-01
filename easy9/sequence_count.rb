def sequence(count, number)
  arr = []
  count.times do |i|
    arr.push((i + 1) * number)
  end
  arr
end

# consider range and map next time

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
