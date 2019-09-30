# Using the Ruby language, have the function CountingMinutesI(str) take the str
# parameter being passed which will be two times (each properly formatted with
# a colon and am or pm) separated by a hyphen and return the total number of minutes
# between the two times. The time will be in a 12 hour clock format. For example: if
# str is 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am the
# output should be 1320.

def CountingMinutesI(str)
  times = str.split('-')
  times.map! do |time|
    hours, minutes = time.split(':').map(&:to_i)
    hours += 12 if time[-2..-1] == 'pm' && hours < 12
    hours -= 12 if time[-2..-1] == 'am' && hours >= 12
    hours * 60 + minutes
  end
  times.reverse.inject(:-) % 1440
end

p CountingMinutesI("9:00am-10:00am") == 60
p CountingMinutesI("1:00pm-11:00am") == 1320
p CountingMinutesI("12:30pm-12:00am") == 690
p CountingMinutesI("1:23am-1:08am") == 1425
