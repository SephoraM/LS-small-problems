def buy_fruit(list_arr)
  list_arr.each_with_object([]) { |item, arr| item[1].times { arr << item[0] } }
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
