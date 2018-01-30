def halvsies(arr)
  half = arr.size / 2
  first = arr.size.odd? ? arr.first(half + 1) : arr.first(half)
  [first, arr.last(half)]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
