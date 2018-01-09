def calculate_square_meters(length, width)
  length * width
end

def calculate_square_feet(square_meters)
  square_meters * 10.7639
end

def request_meters(measurement)
  puts "Enter the #{measurement} of the room in meters:"
end

request_meters("length")
room_length = gets.chomp

request_meters("width")
room_width = gets.chomp

sq_meters = calculate_square_meters(room_length.to_i, room_width.to_i)
sq_feet = calculate_square_feet(sq_meters)

puts "The area of the room is #{sq_meters}" + \
     " square meters (#{sq_feet.round(2)} square feet)."
