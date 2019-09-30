# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 9 Question 1, Welcome Stranger

# QUESTION
# Create a method that takes 2 arguments, an array and a hash. The array will contain
# 2 or more elements that, when combined with adjoining spaces, will produce a
# person's name. The hash will contain two keys, :title and :occupation, and the
# appropriate values. Your method should return a greeting that uses the person's
# full name, and mentions the person's title.

$stdout.sync = true # To display output immediately on windows using git bash

def greetings(name, status)
  name, title, occupation = name.join(' '), status[:title], status[:occupation]
  "Hey, #{name}! Nice to have a #{title} #{occupation} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
