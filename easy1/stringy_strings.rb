# with further exploration's optional argument

def stringy(num, start = 1)
  str = ''
  bin1 = start.to_s
  start == 1 ? bin2 = '0' : bin2 = '1'
  
  num.times do |i|
    i.even? ? str << bin1 : str << bin2
  end
  str
end

puts stringy(6) == '101010' # => true
puts stringy(9) == '101010101' # => true
puts stringy(4) == '1010' # => true
puts stringy(7) == '1010101' # => true

puts stringy(6, 0) == '010101' # => true
puts stringy(9, 1) == '101010101' # => true
puts stringy(4, 0) == '0101' # => true
puts stringy(7, 0) == '0101010' # => true
