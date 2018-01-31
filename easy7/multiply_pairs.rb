def multiply_all_pairs(arr1, arr2)
  product_array = []
  arr1.each { |n1| arr2.each { |n2| product_array.push(n1 * n2) } }
  product_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
