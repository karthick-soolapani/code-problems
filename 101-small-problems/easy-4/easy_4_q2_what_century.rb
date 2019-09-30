# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 4 Question 2, What Century is That?

# QUESTION
# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.
# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

$stdout.sync = true # To display output immediately on windows using git bash

def century(num)
  century_num = ((num - 1) / 100) + 1

  century_string = century_num.to_s
  century_string << if (century_num % 100).between?(11, 13)
                      'th'
                    elsif century_num % 10 == 1
                      'st'
                    elsif century_num % 10 == 2
                      'nd'
                    elsif century_num % 10 == 3
                      'rd'
                    else
                      'th'
                    end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
p century(1) == '1st'
p century(100) == '1st'
p century(101) == '2nd'

# ALTERNATE SOLUTIONS

=begin

#1
century = (year / 100.0).ceil

#2
CENT_SUFFIXES = {'0' => 'th', '1' => 'st', '2' => 'nd', '3' => 'rd',
  '4' => 'th', '5' => 'th', '6' => 'th', '7' => 'th', '8' => 'th',
  '9' => 'th'}

def century(number)
  century, remainder = number.divmod(100)
  century += 1 unless remainder.zero?
  last_two_digits_of_century = century.divmod(100).last
  case last_two_digits_of_century
  when 11, 12, 13
    century.to_s + 'th'
  else
    century.to_s + CENT_SUFFIXES[century.to_s[-1]]
  end
end

=end