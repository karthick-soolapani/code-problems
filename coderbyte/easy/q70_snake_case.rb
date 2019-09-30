# Using the Ruby language, have the function SnakeCase(str) take the str parameter being passed and return it in proper snake case format where each word is lowercased and separated from adjacent words via an underscore. The string will only contain letters and some combination of delimiter punctuation characters separating each word. 

# For example: if str is "BOB loves-coding" then your program should return the string bob_loves_coding.

def SnakeCase(str)
  str.split(/[^a-zA-Z]/).map(&:downcase).join('_')
end

p SnakeCase("BOB loves-coding") == "bob_loves_coding"
p SnakeCase("cats AND*Dogs-are Awesome") == "cats_and_dogs_are_awesome"
p SnakeCase("a b c d-e-f%g") == "a_b_c_d_e_f_g"

