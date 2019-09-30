# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Medium 1, Question 7, Number Guesser Part 2

# QUESTION
# In the previous exercise, you wrote a number guessing game that determines a secret number between 1 and 100, and gives the user 7 opportunities to guess the number.
# Update your solution to accept a low and high value when you create a GuessingGame object, and use those values to compute a secret number for the game. You should also change the number of guesses allowed so the user can always win if she uses a good strategy. You can compute the number of guesses with:
# Math.log2(size_of_range).to_i + 1

$stdout.sync = true # To display output immediately on windows using git bash

class Player
  attr_reader :choice

  def choose(range)
    loop do
      print "Enter a number between #{range.begin} and #{range.end}: "
      @choice = gets.chomp.to_i
      
      break if range.cover?(choice)
      print "Invalid guess. "
    end
  end
end

class GuessingGame
  attr_reader :player, :range

  def initialize(start_num, end_num)
    @player = Player.new
    @range = (start_num..end_num)
    @max_guesses = Math.log2(@range.size).to_i + 1
    @lucky_num = nil
  end
  
  def play
    @lucky_num = rand(range)

    @max_guesses.downto(1) do |remaining_guesses|
      display_guesses_remaining(remaining_guesses)
      player.choose(range)
      display_ranking(player.choice)
      break if won?
    end

    display_result
  end
  
  private
  
  def display_guesses_remaining(remaining)
    puts nil
    if remaining == 1
      puts 'You have 1 guess remaining.'
    else
      puts "You have #{remaining} guesses remaining."
    end
  end
  
  def won?
    @lucky_num == player.choice
  end
  
  def display_ranking(choice)
    case choice <=> @lucky_num
    when 1  then puts "Your guess is too high."
    when -1 then puts "Your guess is too low."
    when 0  then puts "That's the number!"
    end
  end
  
  def display_result
    puts nil
    if won?
      puts "You won!"
    else
      puts "You have no more guesses. You lost!"
    end
  end
end

game = GuessingGame.new(501, 1500)
game.play
game.play
