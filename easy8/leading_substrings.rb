def substrings_at_start(str)
  length = 0
  str.chars.map do |_|
    length += 1
    str[0, length]
  end
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
