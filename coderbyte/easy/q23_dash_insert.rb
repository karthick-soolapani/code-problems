# Using the Ruby language, have the function DashInsert(str) insert dashes ('-')
# between each two odd numbers in str. For example: if str is 454793 the output
# should be 4547-9-3. Don't count zero as an odd number.

def DashInsert(str)
  result = ''
  str.chars.each_with_index do |char, idx|
    result << char
    result << '-' if char.to_i.odd? && str[idx + 1].to_i.odd?
  end
  result
end

p DashInsert('454793') == '4547-9-3'
p DashInsert('99946') == '9-9-946'
p DashInsert('56730') == '567-30'
