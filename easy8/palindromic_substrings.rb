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

def palindromes(str)
  substrings(str).select { |e| e.size > 1 && e.reverse == e }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
