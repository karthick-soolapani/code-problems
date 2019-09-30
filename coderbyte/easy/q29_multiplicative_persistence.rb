# Using the Ruby language, have the function MultiplicativePersistence(num) take
# the num parameter being passed which will always be a positive integer and return
# its multiplicative persistence which is the number of times you must multiply the digits
# in num until you reach a single digit. For example: if num is 39 then your program
# should return 3 because 3 * 9 = 27 then 2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4.

def MultiplicativePersistence(num)
  mult_pers = 0
  until num < 10
    num = num.digits.inject(:*)
    mult_pers += 1
  end
  mult_pers
end

p MultiplicativePersistence(39) == 3
p MultiplicativePersistence(4) == 0
p MultiplicativePersistence(25) == 2
