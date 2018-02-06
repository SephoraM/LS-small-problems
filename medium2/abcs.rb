BLOCKS = {
  'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A', 'G' => 'T',
  'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U', 'V' => 'I', 'L' => 'Y',
  'Z' => 'M'
}

def block_word?(word)
  used_letters = []
  word.upcase.chars.each do |c|
    return false if used_letters.include?(c)
    other_letter = BLOCKS.key?(c) ? BLOCKS[c] : BLOCKS.key(c)
    used_letters.push(c, other_letter)
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
