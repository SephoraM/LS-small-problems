def integer_to_string(num)
  arr_of_ints = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  str = ''
  loop do
    num, digit = num.divmod(10)
    str += arr_of_ints[digit]
    break if num <= 0
  end
  str.reverse
end

def signed_integer_to_string(num)
  absolute_num = num.abs
  sign = absolute_num == num ? '+' : '-'
  str = integer_to_string(absolute_num)
  num == 0 ? str : str.prepend(sign)
end



p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
