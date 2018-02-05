def toggle_lights(n, multiplier, arr)
  1.upto(n) do |i|
    light = i * multiplier
    if arr.include?(light)
      arr.delete(light)
    elsif light <= n
      arr << light
    end
  end
  arr
end

def lights_on(num)
  lights = []
  1.upto(num) do |i|
    toggle_lights(num, i, lights)
  end
  lights
end

p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]
