# Using the Ruby language, have the function DivisionStringified(num1,num2) take
# both parameters being passed, divide num1 by num2, and return the result as a
# string with properly formatted commas. If an answer is only 3 digits long, return
# the number with no commas (ie. 2 / 3 should output "1"). For example: if num1 is
# 123456789 and num2 is 10000 the output should be "12,346".

def DivisionStringified(num1, num2)
  formatted_num = (num1.to_f / num2).round.to_s
  formatted_num.reverse.scan(/\d\d?\d?/).join(',').reverse
end

p DivisionStringified(5, 2) == "3"
p DivisionStringified(2, 3) == "1"
p DivisionStringified(123456789, 10000) == "12,346"
p DivisionStringified(6874, 67) == "103"
p DivisionStringified(503394930, 43) == "11,706,859"
p DivisionStringified(1, 10) == "0"

def DivisionStringified(num1, num2)
  formatted_num = (num1.to_f / num2).round.to_s
  
  num_arr = formatted_num.reverse.chars
  (3...num_arr.size).step(4) { |idx| num_arr.insert(idx, ',') }
  num_arr.reverse.join
end

def separate_comma(number)
  number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end
