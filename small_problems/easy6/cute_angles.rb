
# Input: float
# Output: float converted to an angle in degrees, minutes, and seconds

# Rules: Method returns angle as a string
#        Minutes and seconds are formatted as two digits

# Data Structures: strings

# Algorithm: 
# Getting String
# Take floating point number
# Find degrees and set to variable degree
# Find minutes and set to variable minutes
# Find seconds and set to variable seconds
# use #{} to print variables as a single string

# Finding Degrees
# ----------------
# Divide float by 1

# Finding Minutes
# ----------------
# Divide the result of float % 1 by 60

# Finding seconds
# ---------------
#  Find the modulo of the result of float % 1 and 60

DEGREE = "\xC2\xB0"

def dms(float)
  degrees = float.to_i % 360
  minutes = (float % 1) * 60
  seconds = ((minutes % 1) * 60).to_i
  minutes = minutes.to_i

  "#{degrees}" + DEGREE + "#{format("%02d'%02d\"", minutes, seconds)}"
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(400)
