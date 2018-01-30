DEGREE = "\xC2\xB0"

def dms(float)
  arr = float.to_s.split('.')
  leading = arr.size > 1 ? arr[1][0] : '00'
  degree = "#{arr[0]}#{DEGREE}"

  mins = leading == '00' ? leading : (arr[1].to_i * 60).to_s
  secs = leading == '00' ? leading : (mins[2..-1].to_i * 60).to_s

  mins = leading == '0' ? '0' + mins[0] : mins[0, 2]
  secs = leading == '0' || secs.size < 2 ? '0' + secs[0] : secs[0, 2]
  "#{degree}#{mins}'#{secs}\""
end


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(-76.73)
