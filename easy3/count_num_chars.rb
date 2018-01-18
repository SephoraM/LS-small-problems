def count_chars_no_spaces(str)
  str.count("^ ")
end

print "Please write word or multiple words: "
words = gets.chomp

puts "There are #{count_chars_no_spaces(words)} characters in \"#{words}\"."
