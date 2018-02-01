=begin
Input: string
Output: string
      - the middle character or characters of the argument.
      - If the argument has an odd length, return exactly one character.
      - If the argument has an even length, return exactly two characters.

Data Structures: string
Algorithm:
if string size is odd, return string[size / 2]
else return string[size / 2 - 1, 2]
=end

def center_of(str)
  str.size.odd? ? str[str.size / 2] : str[(str.size / 2) - 1, 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
