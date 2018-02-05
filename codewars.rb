=begin
In this Kata, you will be given an array of numbers and a number n, and your
task will be to determine if any array elements, when summed
(or taken individually), are divisible by n.

All numbers in the array will be greater than 0.
=end

# solve([1,3,4,7,6],9) == true
# solve([1,2,3,4,5],10) == true
# solve([8,5,3,9],7) == true
# solve([8,5,3],7) == false

=begin
In this Kata, you will be given a string with brackets and an index of an
opening bracket and your task will be to return the index of the matching
closing bracket. Return -1 if there is no answer. An opening brace will
always have a closing brace.

Input will consist of letters, numbers and special characters, but no spaces.
The only brackets will be ( and ).
=end

# solve("((1)23(45))(aB)", 0) = 10 -- the opening brace at index 0 matches the closing brace at index 10
# solve("((1)23(45))(aB)", 1) = 3
# solve("((1)23(45))(aB)", 2) = -1 -- there is no opening bracket at index 2, so return -1
# solve("((1)23(45))(aB)", 6) = 9
# solve("((1)23(45))(aB)", 11) = 14
# solve("((>)|?(*'))(yZ)", 11) = 14
