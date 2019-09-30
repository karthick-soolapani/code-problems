# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Easy 1, Question 1, Banner Class

# QUESTION
# Complete this class so that the test cases shown below work as intended. You are free to add any methods or instance variables you need. However, do not make the implementation details public.
# You may assume that the input will always fit in your terminal window.

$stdout.sync = true # To display output immediately on windows using git bash

class Banner
  def initialize(message)
    @message = message
    @width = message.size + 2
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    '+' + ('-' * @width) + '+'
  end

  def empty_line
    '|' + (' ' * @width) + '|'
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('')
puts banner

# FURTHER EXPLORATION

class Banner
  DEFAULT_WIDTH = 80

  def initialize(message, total_width = nil)
    @width = calculate_width(total_width, message.size)
    @message = formatted_message(message)
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def calculate_width(total_width, message_size)
    if total_width
      total_width - 2
    elsif message_size + 4 >= DEFAULT_WIDTH
      DEFAULT_WIDTH - 2
    else
      message_size + 2
    end
  end

  def formatted_message(message)
    return [message] if message.empty?
    message.scan(/.{1,#{@width - 2}}/)
  end

  def horizontal_rule
    '+' + ('-' * @width) + '+'
  end

  def empty_line
    '|' + (' ' * @width) + '|'
  end

  def message_line
    @message.map { |line| '|' + line.center(@width) + '|' }
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('')
puts banner
