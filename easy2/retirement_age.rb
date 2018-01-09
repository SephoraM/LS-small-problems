print "What is your age? "
current_age = gets.chomp

print "At what age would you like to retire? "
retirement_age = gets.chomp

current_year = Time.now.year
work_years = retirement_age.to_i - current_age.to_i

puts "It's #{current_year}. You will retire in #{current_year + work_years}."
puts "You have only #{work_years} years of work to go!"
