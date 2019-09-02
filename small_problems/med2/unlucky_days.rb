
#input: an integer representing a year
# output: one integer, representing the number of times a friday the 13th occured in said yeat

# create day object named day equal to 01/01/given year
# create int object named fridays equal to zero
# begin a loop
#   break if the year of day != given year
#   check if day is friday and and the 13th
#     if so, increase fridays by one
#   set day equal to next date
# return fridays
require 'date'

def friday_13th(year)
  day = Date.new(year,1,1)
  fridays = 0

  loop do
    break if day.year != year

    if day.friday? && day.day == 13
      fridays += 1
    end

    day = day.next
  end

  fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2