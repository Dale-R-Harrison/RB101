
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def check_format(integer)
  if integer < 10
    integer = SINGLE_DIGIT_NUMS[integer]
  end
  integer
end

def time_of_day(minutes_integer)
  minutes = minutes_integer % MINUTES_PER_HOUR
  hours = (minutes_integer / MINUTES_PER_HOUR) % HOURS_PER_DAY

  format('%02d:%02d', hours, minutes)
end


puts time_of_day(0)
puts time_of_day(-3) 
puts time_of_day(35) 
puts time_of_day(-1437) 
puts time_of_day(3000) 
puts time_of_day(800) 
puts time_of_day(-4231) 