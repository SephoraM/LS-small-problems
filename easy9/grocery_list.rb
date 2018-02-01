=begin
Input: array of arrays
Output: array
Data Structures: array
Algorithm:
iterate over array. for each sub-array, element 2 times push element 1 to new array
return new array
=end

def buy_fruit(list_arr)
  list_arr.each_with_object([]) { |item, arr| item[1].times { arr << item[0] } }
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
