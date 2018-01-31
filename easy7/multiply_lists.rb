def multiply_list(arr1, arr2)
  arr1.each_with_index.map { |e, i| e * arr2[i] }
end

# Further Exploration:

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.reduce(1, :*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
