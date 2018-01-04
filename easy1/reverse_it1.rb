def reverse_sentence(string)
  string.split.reverse.join(" ")
end

puts reverse_sentence('') == '' # => true
puts reverse_sentence('Hello World') == 'World Hello' # => true
puts reverse_sentence('Reverse these words') == 'words these Reverse' # => true
