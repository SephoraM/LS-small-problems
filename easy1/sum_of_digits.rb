def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5 # => true
puts sum(496) == 19 # => true
puts sum(123_456_789) == 45 # => true
