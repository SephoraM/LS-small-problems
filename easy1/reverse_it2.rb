def reverse_words(string)
  string.split.map { |e| e.length >= 5 ? e.reverse : e }.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
