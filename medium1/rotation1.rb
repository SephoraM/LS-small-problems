def rotate_array(arr)
  dup_arr = arr.dup
  dup_arr << dup_arr.shift
end

# Further Exploration:

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

p rotate_string("abcde") == "bcdea"
p rotate_string("123") == "231"
p rotate_string("a") == "a"

x = "string"
p rotate_string(x) == "trings"   # => true
p x == "string"                 # => true

p rotate_integer(1234) == 2341
p rotate_integer(23) == 32
p rotate_integer(1) == 1

x = 1234
p rotate_integer(x) == 2341   # => true
p x == 1234                 # => true
