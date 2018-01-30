def triangle(num)
  star_num = 1
  num.times do
    puts "#{' ' * (num - star_num)}#{'*' * star_num}"
    star_num += 1
  end
end

triangle(5)
triangle(9)
