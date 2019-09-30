# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 1, Question 4, Fix the Program - Books (Part 2)

# QUESTION
# Complete this program so that it produces the expected output:

$stdout.sync = true # To display output immediately on windows using git bash

class Book
  attr_accessor :title, :author

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# FURTHER EXPLORATION

# I think it's fairly clear that using an initialize method is superior for creating and initializing objects in most cases. An initialize method should be used to set anything that is or can be present at the creation of the object. especially when without those attributes the object has no informational value - a "book" without title, author or indeed any other attribute is meaningless. Seems like only values that might or must be added after the creation of the object should be accessible via a setter method. Potential problems with separating the steps like the approach in this exercise include allowing outside writing to an attribute when all that is really needed is an initial set, loss of flexibility - attr_* methods can't manipulate their parameters at all - - you'd need a custom getter/setter method instead), and forgetting to set an attribute after creating the object (initialize methods can account for missing parameters with defaults in a way that an attr_* method can't, and any error will pop up at the creation of the object instead of somewhere else in the code). Conversely, only having an initialize method might bite you if you actually do need to allow outside access at some point in the code - but that's not a difficult problem to solve.
