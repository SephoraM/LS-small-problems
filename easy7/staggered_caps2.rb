def staggered_case(str)
  count = 1
  arr_of_chars = str.chars.map do |e|
    if e =~ /[a-z]/i
      count += 1
      count.even? ? e.upcase : e.downcase
    else
      e
    end
  end
  arr_of_chars.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
