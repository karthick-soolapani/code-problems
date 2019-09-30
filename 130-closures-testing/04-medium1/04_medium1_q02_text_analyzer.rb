# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Medium 1, Question 2, Text Analyzer - Sandwich Code

# QUESTION
# Read the text file in the #process method and pass the text to the block provided in each call. Everything you need to work on is either part of the #process method or part of the blocks. You need no other additions or changes.

$stdout.sync = true # To display output immediately on windows using git bash

class TextAnalyzer
  def process
    yield File.read('sample.txt')
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split(/\n\n+/).size} paragraphs" }
analyzer.process { |text| puts "#{text.split(/\n/).size} lines"         }
analyzer.process { |text| puts "#{text.split.size} words"               }

class TextAnalyzer
  def process
    file = File.open('sample_text.txt', 'r')
    yield(file.read)
    file.close
  end
end

class TextAnalyzer
  def process(&block)
    File.open('sample.txt', &block)
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |f| puts "#{f.read.split(/\n{2}/).count} paragraphs" }
analyzer.process { |f| puts "#{f.read.split(/\n/).count} lines" }
analyzer.process { |f| puts "#{f.read.split.count} words" }
