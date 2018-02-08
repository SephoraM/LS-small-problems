def balanced?(str)
  count = 0
  str.chars.each do |c|
    count += 1 if c == '('
    count -= 1 if c == ')'
    return false if count < 0
  end
  count == 0 ? true : false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
