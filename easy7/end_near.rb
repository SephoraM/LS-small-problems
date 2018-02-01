def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# Further Exploration -- retrieves the middle word of a phrase/sentence
# Handles edge cases with a statement that there is no middle word.

def middle_word(str)
  arr = str.split
  arr.size > 1 && arr.size.odd? ? arr[arr.size / 2] : 'No middle word!'
end

p middle_word('Two words') == 'No middle word!'
p middle_word('Launch School is the greatest!') == 'is'
p middle_word('Ring around the rosies, pocket full of posies, ashes') == 'pocket'
p middle_word('') == 'No middle word!'
p middle_word('Solo') == 'No middle word!'
