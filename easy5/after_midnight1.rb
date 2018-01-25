MINS_PER_HR = 60
HRS_PER_DAY = 24
MINS_IN_DAY = MINS_PER_HR * HRS_PER_DAY
DAYS_OF_WEEK = ['Sunday', 'Monday', 'Tuesday',
                'Wednesday', 'Thursday',
                'Friday', 'Saturday']

def time_of_day(minutes)
  days_between, mins_left = minutes.divmod(MINS_IN_DAY)
  hrs, mins = mins_left.divmod(MINS_PER_HR)
  "#{format("%s %0.2d:%0.2d", DAYS_OF_WEEK[days_between], hrs, mins)}"
end
