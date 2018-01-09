# With further exploration

def print_random_age(person="Teddy")
  puts "#{person} is #{rand(20..200)} years old!"
end

puts "What's your name?"
user_name = gets.chomp
user_name.empty? ? print_random_age : print_random_age(user_name)
