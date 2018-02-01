def fizzbuzz(first_num, last_num)
  arr = []
  first_num.upto(last_num) do |num|
    case
    when num % 3 == 0 && num % 5 == 0 then arr << "FizzBuzz"
    when num % 3 == 0                 then arr << "Fizz"
    when num % 5 == 0                 then arr << "Buzz"
    else arr << num
    end
  end
  puts arr.join(", ")
end

fizzbuzz(1, 15)
