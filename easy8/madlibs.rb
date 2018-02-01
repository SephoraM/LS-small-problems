TYPE_OF_WORD = ['a noun', 'a verb', 'an adjective', 'an adverb']

def word_from_user(word_type)
  print "Enter #{word_type}: "
  gets.chomp
end

def madlib()
  words = TYPE_OF_WORD.map { |type| word_from_user(type) }
  "Do you #{words[1]} your #{words[2]} #{words[0]}#{words[3]}?" \
  " That's hilarious!"
end

puts madlib
