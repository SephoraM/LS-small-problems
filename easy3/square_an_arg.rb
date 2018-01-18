def multiply(a, b)
  a * b
end

def square(n)
  multiply(n, n)
end

# further exploration

def power_to_the_n(number, power)
  result = 1
  1.upto(power) { result = multiply(result, number) }
  result
end

p power_to_the_n(5, 4)
p power_to_the_n(5, 3)
p power_to_the_n(5, 2)
p power_to_the_n(5, 1)
p power_to_the_n(5, 0)
