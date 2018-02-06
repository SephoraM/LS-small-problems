sentences = []

open("example.txt", "r") do |f|
  sentence_str = f.read
  sentences = sentence_str.tr("\n", " ").split(/[.!?]/)
end

longest = ""
sentences.each do |sentence|
  longest = sentence if longest.split.size < sentence.split.size
end

puts longest
puts "The length of the longest sentence is #{longest.split.size}"
