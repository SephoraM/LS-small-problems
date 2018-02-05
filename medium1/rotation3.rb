def rotate_string(str)
  str[1..-1] + str[0]
end

def rotate_rightmost_digits(number, num)
  return number if num == 1
  str_num = number.to_s
  (str_num[0...-num] + rotate_string(str_num[-num..-1])).to_i
end

def max_rotation(number)
  (number.to_s.size).downto(2) do |i|
    number = rotate_rightmost_digits(number, i)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
