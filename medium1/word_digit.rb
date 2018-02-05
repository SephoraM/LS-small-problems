STRING_TO_DIGIT = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def word_to_digit(sentence)
  STRING_TO_DIGIT.each do |k, v|
    sentence.gsub!(k, v)
  end
  sentence
end

sentence = 'Please call me at five five five one two three four. Thanks.'
p word_to_digit(sentence)
