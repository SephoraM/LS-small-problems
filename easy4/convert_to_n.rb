def string_to_integer(num_str)
  num_str.chars.reduce(0) { |v, d| v = 10 * v + (d.sum - 48) }
end


p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
