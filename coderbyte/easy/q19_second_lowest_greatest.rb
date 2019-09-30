# Using the Ruby language, have the function SecondGreatLow(arr) take the array
# of numbers stored in arr and return the second lowest and second greatest numbers,
# respectively, separated by a space. For example: if arr contains [7, 7, 12, 98, 106]
# the output should be 12 98. The array will not be empty and will contain at least 2
# numbers. It can get tricky if there's just two numbers!

def SecondGreatLow(arr)
  second_lowest = arr.uniq.min(2).last
  second_greatest = arr.uniq.max(2).last
  "#{second_lowest} #{second_greatest}"
end

p SecondGreatLow([7, 7, 12, 98, 106]) == '12 98'
p SecondGreatLow([1, 42, 42, 180]) == "42 42"
p SecondGreatLow([4, 90]) == "90 4"
