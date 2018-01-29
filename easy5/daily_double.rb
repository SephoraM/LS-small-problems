def crunch(str)
  no_dups = ''
  str.chars.each do |c|
    next if no_dups[-1] == c
    no_dups << c
  end
  no_dups
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
