def calculate_by_choice(num)
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp

  if choice == 's'
    return (1..num).reduce(:+), "sum"
  elsif choice == 'p'
    return (1..num).reduce(:*), "product"
  else
    puts ">> Invalid choice. Try Again."
    calculate_by_choice(num)
  end
end

loop do
  puts ">> Please enter an integer greater than 0:"
  number = gets.chomp.to_i
  if number <= 0
    puts "That isn't a valid integer. Please try again."
    next
  end

  result, calculation = calculate_by_choice(number)

  puts "The #{calculation} of the integers between 1 and #{number} is #{result}."

  puts "Would you like to find the sum or product of another number? (y/n)"
  continue = gets.chomp
  break unless continue.downcase.start_with?('y')
  system('clear') || system('cls')
end
