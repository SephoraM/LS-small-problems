# input: two values
# output: true if one and only one of the arguments is true.
# output: false otherwise

def xor?(op1, op2)
  (op1 || op2) && !(op1 && op2)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
