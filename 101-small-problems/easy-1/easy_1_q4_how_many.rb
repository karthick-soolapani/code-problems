# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 1 Question 4, How Many?

# QUESTION
# Write a method that counts the number of occurrences of each element in a given array.
# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

$stdout.sync = true # To display output immediately on windows using git bash

def count_occurrences(array)
  return puts('Invalid Array') unless array.is_a?(Array)
  return puts('There is nothing to count') if array.empty?

  counts = array.each_with_object(Hash.new(0)) do |word, hash|
    hash[word] += 1
  end

  counts.each do |word, count|
    puts "#{word} => #{count}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)
count_occurrences('Cool')
count_occurrences([])
count_occurrences([''])
count_occurrences([' ', ' '])

puts
puts 'Alternate method'
puts

def count_occurrences_v2(array)
  return puts('Invalid Array') unless array.is_a?(Array)
  return puts('There is nothing to count') if array.empty?

  counts = {}

  array.each do |word|
    counts[word] = array.count(word)
  end

  counts.each do |word, count|
    puts "#{word} => #{count}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences_v2(vehicles)
count_occurrences_v2('Cool')
count_occurrences_v2([])
count_occurrences_v2([''])
count_occurrences_v2([' ', ' '])

puts
puts 'Alternate method'
puts

def count_occurrences_v3(array)
  array.uniq.each do |word|
    puts "#{word} => #{array.count(word)}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences_v3(vehicles)
count_occurrences_v3('Cool')
count_occurrences_v3([])
count_occurrences_v3([''])
count_occurrences_v3([' ', ' '])
