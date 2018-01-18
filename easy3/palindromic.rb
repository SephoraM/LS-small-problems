def palindrome?(given_value)
  given_value == given_value.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

# works on arrays too
puts palindrome?([1, 2, 3, 2, 1]) == true
puts palindrome?(['Madam', 'Madam', 'adam']) == false
puts palindrome?(["madam i'm adam", 1, 2]) == false
puts palindrome?(["madam i'm adam", 1, "madam i'm adam"]) == true
