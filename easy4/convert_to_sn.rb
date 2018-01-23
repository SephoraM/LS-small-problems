def string_to_signed_integer(str)
  ints_by_index = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  arr_of_ints = str.chars
  sign = arr_of_ints.shift if arr_of_ints[0].start_with?('-', '+')
  num = arr_of_ints.map { |e| ints_by_index.index(e) }.reduce(0) do |v, n|
    v = 10 * v + n
  end
  sign == '-' ? num * -1 : num
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
