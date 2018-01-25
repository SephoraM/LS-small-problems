require 'date'

MINS_PER_HR = 60
HRS_PER_DAY = 24

def after_midnight(time)
  hrs, mins = time.split(':')
  ((hrs.to_i % HRS_PER_DAY) * MINS_PER_HR) + mins.to_i
end

def before_midnight(time)
  hrs, mins = time.split(':')
  -((-(hrs.to_i % HRS_PER_DAY) * MINS_PER_HR) + mins.to_i)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
