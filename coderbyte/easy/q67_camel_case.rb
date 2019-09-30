# Using the Ruby language, have the function CamelCase(str) take the str parameter being passed and return it in proper camel case format where the first letter of each word is capitalized (excluding the first letter). The string will only contain letters and some combination of delimiter punctuation characters separating each word. 

# For example: if str is "BOB loves-coding" then your program should return the string bobLovesCoding. 

def CamelCase(str)
  str = str.split(/[^a-zA-Z]/).map(&:capitalize)
  str.first.downcase!
  str.join
end

p CamelCase("BOB loves-coding") == "bobLovesCoding"
p CamelCase("cats AND*Dogs-are Awesome") == "catsAndDogsAreAwesome"
p CamelCase("a b c d-e-f%g") == "aBCDEFG"
