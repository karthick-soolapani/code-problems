# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 8 Question 2, Madlibs

# QUESTION
# Mad libs are a simple game where you create a story template with blanks for words.
# You, or another player, then construct a list of words and place them into the story,
# creating an often silly or funny story as a result.
# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and
# an adjective and injects those into a story that you create.

$stdout.sync = true # To display output immediately on windows using git bash

print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample


# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

# ALTERNATE SOLUTION

def madlib
  noun, verb, adj, adv = %w[noun verb adjective adverb].map do |word_type|
    puts "Please enter a#{'n' if word_type[/\Aa/]} #{word_type}:"
    gets.chomp
  end
  puts format("Do you %s your %s %s %s? That's hilarious!", verb, adj, noun, adv)
end
