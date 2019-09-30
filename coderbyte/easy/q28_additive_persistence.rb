# Using the Ruby language, have the function AdditivePersistence(num) take the num
# parameter being passed which will always be a positive integer and return its additive
# persistence which is the number of times you must add the digits in num until you reach a
# single digit. For example: if num is 2718 then your program should return 2 because
# 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9.

def AdditivePersistence(num)
  addv_pers = 0
  until num < 10
    num = num.digits.sum
    addv_pers += 1
  end
  addv_pers
end

p AdditivePersistence(2718) == 2
p AdditivePersistence(4) == 0
p AdditivePersistence(19) == 2

def AdditivePersistence(num)
  addv_pers = 0
  digits = num.digits
  
  while digits.size > 1
    digits = digits.sum.digits
    addv_pers += 1
  end
  addv_pers
end
