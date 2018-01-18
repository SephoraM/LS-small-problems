def get_integer_from_user(current)
  puts "==> Enter the #{current} number:"
  gets.chomp.to_i
end

first_number = get_integer_from_user('first')
second_number = 0
loop do
  second_number = get_integer_from_user('second')
  break unless second_number == 0
  puts "==> The second number cannnot be 0. Try a different number."
end

operations = {
  '+': first_number + second_number,
  '-': first_number - second_number,
  '*': first_number * second_number,
  '/': first_number / second_number,
  '%': first_number % second_number,
  '**': first_number ** second_number
}

operations.each do |operator, result|
  puts "==> #{first_number} #{operator} #{second_number} = #{result}"
end
