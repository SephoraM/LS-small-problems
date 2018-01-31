def interleave(arr1, arr2)
  new_arr = []
  arr1.each_with_index { |e, i| new_arr.push(e, arr2[i]) }
  new_arr
end

# or with Array#zip

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
