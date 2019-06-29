
MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def find_total_minutes(time)
  hours = time.slice(0..1).to_i
  minutes = time.slice(3..4).to_i

  total_minutes = hours * MINUTES_PER_HOUR + minutes
end

def after_midnight(time)
  total_minutes = find_total_minutes(time)
  
  total_minutes = 0 if total_minutes == MINUTES_PER_DAY
  total_minutes
end

def before_midnight(time)
  total_minutes = find_total_minutes(time)

  if total_minutes == MINUTES_PER_DAY 
    total_minutes = 0
  else
    total_minutes = MINUTES_PER_DAY - total_minutes
  end
  total_minutes
end

puts after_midnight('00:00') 
puts before_midnight('00:00') 
puts after_midnight('12:34') 
puts before_midnight('12:34')
puts after_midnight('24:00') 
puts before_midnight('24:00') 
