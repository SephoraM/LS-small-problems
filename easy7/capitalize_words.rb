def word_cap(str)
  str.split.map(&:capitalize).join(" ")
end

# Further Exploration:

def word_cap(str)
  str.downcase.split.each { |word| word[0] = word[0].upcase }.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
