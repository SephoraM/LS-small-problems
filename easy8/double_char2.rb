def double_consonants(str)
  str.chars.map { |c| c.count('a-zA-Z', '^aeiou') == 1 ? c * 2 : c }.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
