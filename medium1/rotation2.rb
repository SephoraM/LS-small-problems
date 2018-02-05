def rotate_string(str)
  str[1..-1] + str[0]
end

def rotate_rightmost_digits(number, num)
  return number if num == 1
  str_num = number.to_s
  (str_num[0...-num] + rotate_string(str_num[-num..-1])).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
