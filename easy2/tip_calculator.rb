# with further exploration

def prompt_question(type)
  print "What is the #{type}? "
end

def calculate_tip_amount(bill, percentage)
  bill * (percentage / 100)
end

prompt_question("bill")
bill_amount = gets.chomp

prompt_question("tip percentage")
tip_percentage = gets.chomp

tip_amount = calculate_tip_amount(bill_amount.to_f, tip_percentage.to_f)
total_with_tip = bill_amount.to_f + tip_amount

puts "The tip is $#{format("%.2f", tip_amount)}"
puts "The total is $#{format("%.2f",total_with_tip)}"
