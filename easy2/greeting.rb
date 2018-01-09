print "What's your name? "
name = gets.chomp

greet = "Hello #{name}."
yell = "WHY ARE WE SCREAMING?"

puts name[-1] == '!' ? "HELLO #{name.chop.upcase}. #{yell}" : greet
