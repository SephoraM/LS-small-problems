def letter_percentages(str)
  len = str.size
  lower = (str.count("[a-z]").to_f / len) * 100
  upper = (str.count("[A-Z]").to_f / len) * 100
  other = 100.0 - lower - upper

  {
    lowercase: lower,
    uppercase: upper,
    neither: other,
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
