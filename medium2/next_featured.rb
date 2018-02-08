def featured(number)
  break_point = 9_876_543_210
  count = number + 1
  loop do
    break if count >= break_point
    if count % 7 == 0
      count_split = count.to_s.chars
      return count if count.odd? && count_split.uniq == count_split
      count += (count += 7).odd? ? 7 : 14
    else
      count += 1
    end
  end
  "There is no possible number that fulfills those requirements"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
