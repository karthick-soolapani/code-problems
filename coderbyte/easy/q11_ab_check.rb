# Using the Ruby language, have the function ABCheck(str) take the str parameter
# being passed and return the string true if the characters a and b are separated
# by exactly 3 places anywhere in the string at least once (ie. "lane borrowed"
# would result in true because there is exactly three characters between a and b).
# Otherwise return the string false. 

def ABCheck(str)
  str.match?(/a.{3}b/) || str.match?(/b.{3}a/)
end

p ABCheck("Laura sobs") == true
p ABCheck("after badly") == false
p ABCheck("bzzza") == true
