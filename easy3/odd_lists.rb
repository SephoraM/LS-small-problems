def oddities(arr)
  selected_elements = []
  arr.each_with_index { |elem, i| selected_elements << elem if i.even? }
  selected_elements
end

def evensies(arr)
  arr.select.with_index { |_, i| i.odd? }
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

puts evensies([2, 3, 4, 5, 6]) == [3, 5]
puts evensies(['abc', 'def']) == ['def']
puts evensies([123, [123], [234]]) == [[123]]
puts evensies([]) == []
