def valid_triangle?(angles)
  angles.reduce(:+) == 180 && angles.all? { |angle| angle > 0 }
end

def triangle(s1, s2, s3)
  angles = [s1, s2, s3]
  case
  when !(valid_triangle?(angles))          then :invalid
  when angles.include?(90)                 then :right
  when angles.any? { |angle| angle > 90 }  then :obtuse
  else                                          :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
