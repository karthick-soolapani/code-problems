# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Medium 1, Question 6, Number Guesser Part 1

# QUESTION
# Create an object-oriented number guessing class for numbers in the range 1 to 100, with a limit of 7 guesses per game. 
# Note that a game object should start a new game with a new number to guess with each call to #play.

$stdout.sync = true # To display output immediately on windows using git bash

class Player
  attr_reader :choice

  def choose
    loop do
      print "Enter a number between 1 and 100: "
      @choice = gets.chomp.to_i
      
      break if (GuessingGame::RANGE).cover?(choice)
      print "Invalid guess. "
    end
  end
end

class GuessingGame
  MAX_GUESSES = 7
  RANGE = 1..100
  attr_reader :player

  def initialize
    @player = Player.new
    @lucky_num = nil
  end
  
  def play
    @lucky_num = rand(RANGE)

    MAX_GUESSES.downto(1) do |remaining_guesses|
      display_guesses_remaining(remaining_guesses)
      player.choose
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

game = GuessingGame.new
game.play
game.play

