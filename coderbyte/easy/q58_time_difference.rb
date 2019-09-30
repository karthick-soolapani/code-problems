# Using the Ruby language, have the function TimeDifference(strArr) read the array of
# strings stored in strArr which will be an unsorted list of times in a twelve-hour
# format like so: HH:MM(am/pm). Your goal is to determine the smallest difference
# in minutes between two of the times in the list. For example: if strArr is
# ["2:10pm", "1:30pm", "10:30am", "4:42pm"] then your program should return 40 because
# the smallest difference is between 1:30pm and 2:10pm with a difference of 40 minutes.
# The input array will always contain at least two elements and all of the elements will
# be in the correct format and unique.

def TimeDifference(strArr)
  total_minutes = strArr.map do |time|
    hours, minutes = time.split(':').map(&:to_i)
    hours += 12 if time[-2..-1] == 'pm' && hours < 12
    hours -= 12 if time[-2..-1] == 'am' && hours >= 12
    hours * 60 + minutes
  end
  
  combinations = total_minutes.sort.combination(2).to_a
  time_diff = combinations.map do |time1, time2|
    [(time1 - time2).abs, (time1 + 1440 - time2).abs].min
  end
  
  time_diff.min
end

p TimeDifference(["2:10pm", "1:30pm", "10:30am", "4:42pm"]) == 40
p TimeDifference(["1:10pm", "4:40am", "5:00pm"]) == 230
p TimeDifference(["10:00am", "11:45pm", "5:00am", "12:01am"]) == 16
