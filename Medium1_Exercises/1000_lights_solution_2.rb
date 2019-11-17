def toggle(light)
  light == 'off' ? 'on' : 'off'
end

def initialize_lights(num_of_lights)
  (1..num_of_lights).to_a.each_with_object({}) { |n, hash| hash[n] = 'off' }
end

def toggle_lights(num)
  lights = initialize_lights(num)
  for n in 1..num
    lights.each do |light, _|
      lights[light] = toggle(lights[light]) if light % n == 0
    end
  end
  ( lights.select { |_, light| light == 'on' }).keys
end

#Time: 13 Minutes
