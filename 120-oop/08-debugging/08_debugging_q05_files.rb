# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Debugging, Question 5, Files

# QUESTION
# You started writing a very basic class for handling files. However, when you begin to write some simple test code, you get a NameError. The error message complains of an uninitialized constant File::FORMAT.
# What is the problem and what are possible ways to fix it?

$stdout.sync = true # To display output immediately on windows using git bash

class File
  attr_accessor :name, :byte_content

  def initialize(name)
    @name = name
  end

  alias_method :read,  :byte_content
  alias_method :write, :byte_content=

  def copy(target_file_name)
    target_file = self.class.new(target_file_name)
    target_file.write(read)

    target_file
  end

  def to_s
    "#{name}.#{self.class::FORMAT}"
  end
end

class MarkdownFile < File
  FORMAT = :md
end

class VectorGraphicsFile < File
  FORMAT = :svg
end

class MP3File < File
  FORMAT = :mp3
end

# Test

blog_post = MarkdownFile.new('Adventures_in_OOP_Land')
blog_post.write('Content will be added soon!'.bytes)

puts blog_post

# DISCUSSION

# The error occurs when we use the File#to_s method. The reason is our use of the constant FORMAT. When Ruby resolves a constant, it looks it up in its lexical scope, in this case in the File class as well as in all of its ancestor classes. Since it doesn't find it in any of them, it throws a NameError.

# There are several ways to fix this. For example, instead of defining to_s in the File class, we could define it in each of the subclasses, in which the FORMAT constant is defined. But this would duplicate the exact same method, so the DRY principle advises us against it.

# Alternatively, we can add explicit namespacing, as we do in our solution, by prepending the class name. Which class? This will be determined by the subclass from which we are calling to_s. We can reference this subclass as self.class - the class of the receiver of the method call (blog_post in our example). Using self.class offers the same flexibility that we use on line 12 when creating a new instance of the subclass from which we are calling new.

# Another option is to not use a constant but, for example, a method to return those values

# Of course, you could also use an instance variable to store the format, although this doesn't convey the fact that the format of a particular file is fixed and cannot change. Which option you pick is mainly a design choice.
