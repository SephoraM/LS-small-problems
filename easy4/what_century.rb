def century(year)
  cent = year / 100
  cent += 1 if year.to_s.chars.last.to_i > 0

  cent_ary = cent.to_s.chars.map(&:to_i)
  case cent_ary[-1]
  when 1 then cent_ary[-2] != 1 ? cent_ary << 'st' : cent_ary << 'th'
  when 2 then cent_ary[-2] != 1 ? cent_ary << 'nd' : cent_ary << 'th'
  when 3 then cent_ary[-2] != 1 ? cent_ary << 'rd' : cent_ary << 'th'
  else cent_ary << 'th'
  end
  cent_ary.join
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
