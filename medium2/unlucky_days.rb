DAYS = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday',
        'Saturday']

def zellers_rule(year, day, month)
  c, d = year.divmod(100)
  d -= 1 if month > 10
  f = day + (((13 * month) - 1) / 5) + d + (d / 4) + (c / 4) - (2 * c)
  if f.positive?
    f % 7
  else
    r = f % -7
    r.positive? ? r : r + 7
  end
end

def friday_13th(year)
  thirteens = 0
  1.upto(12) do |m|
    idx = zellers_rule(year, 13, m)
    thirteens += 1 if DAYS[idx] == "Friday"
  end
  thirteens
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
