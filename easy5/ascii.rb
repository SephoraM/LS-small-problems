# input: string
# output:  returns the ASCII string value (Integer format) of the string
# You may use String#ord to determine the ASCII value of a character
# The ASCII string value is the sum of the ASCII values of every character

# array, strings, Integer

# split the string by character into array
# iterate over each character, get the ascii value of each
# add each value to the total and return total

def ascii_value(str)
  str.chars.reduce(0) { |total, e| total + e.ord }
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
