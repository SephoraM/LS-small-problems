def triangle(s1, s2, s3)
  sides = [s1, s2, s3].sort
  case
  when sides.any? { |side| side.zero? }, (sides[0] + sides[1]) < sides[2]
    :invalid
  when sides.count(s1) == 3
    :equilateral
  when sides.combination(2).any? { |arr| arr[0] == arr[1] }
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
