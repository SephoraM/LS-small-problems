ALPHANUMERICS = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
                 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
                 'y', 'z', 0, 1, 2 , 3, 4, 5, 6, 7, 8, 9]

def cleanup(str)
  clean_str = ''
  counter = 0
  str.chars.each do |c|
    next if counter > 0 &&
            clean_str[counter - 1] == " " &&
            !(ALPHANUMERICS.include?(c.downcase))
    clean_str[counter] = ALPHANUMERICS.include?(c.downcase) ? c : " "
    counter += 1
  end
  clean_str
end

p cleanup("---what's my +*& line?") == ' what s my line '
