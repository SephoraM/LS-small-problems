def substrings_at_start(str)
  length = 0
  str.chars.map do |_|
    length += 1
    str[0, length]
  end
end

def substrings(str)
  substring_arr = []
  (str.size).times do |i|
    substring_arr.concat(substrings_at_start(str[i, str.size]))
  end
  substring_arr
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
