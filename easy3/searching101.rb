def convert_to_ordinal(num)
  case num
  when 1 then "#{num}st"
  when 2 then "#{num}nd"
  when 3 then "#{num}rd"
  else "#{num}th"
  end
end

def get_number_from_user(current)
  puts "==> Enter the #{current} number:"
  gets.chomp.to_i
end

given_numbers = []

1.upto(5) do |index|
  given_numbers.push(get_number_from_user(convert_to_ordinal(index)))
end

last_number = get_number_from_user("last")

if given_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{given_numbers}."
else
  puts "The number #{last_number} does not appear in #{given_numbers}."
end
