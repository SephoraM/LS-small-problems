def diamond(n)
  middle_row = "*" * n
  first_half = (1..(n / 2)).map do |i|
    side = " " * ((n / 2) - (i - 1))
    side + ("*" * i) + ("*" * (i - 1))
  end
  second_half = first_half.reverse
  first_half.push(middle_row).concat(second_half).each do |row|
    puts row
  end
end

diamond(1)
diamond(3)
diamond(9)
