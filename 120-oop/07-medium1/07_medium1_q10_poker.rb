# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Medium 1, Question 10, Poker!

# QUESTION
# In the previous two exercises, you developed a Card class and a Deck class. You are now going to use those classes to create and evaluate poker hands. Create a class, PokerHand, that takes 5 cards from a Deck of Cards and evaluates those cards as a Poker hand.

$stdout.sync = true # To display output immediately on windows using git bash

class Card
  include Comparable

  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']
  SUITS = ['Diamonds', 'Clubs', 'Hearts', 'Spades']

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def rank_value
    RANKS.index(rank) + 2
  end

  def suit_value
    SUITS.index(suit) + 1
  end

  def <=>(other)
    [rank_value, suit_value] <=> [other.rank_value, other.suit_value]
  end
end

class Deck
  attr_reader :cards

  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
  def initialize
    reset
  end

  def draw
    reset if @cards.empty?
    @cards.pop
  end

  private

  def reset
    @cards = RANKS.product(SUITS).map { |rank, suit| Card.new(rank, suit) }.shuffle!
  end
end

class PokerHand
  include Comparable
  
  HAND_STRENGTH = [
    'High card', 'Pair', 'Two pair', 'Three of a kind', 'Straight', 'Flush',
    'Full house', 'Four of a kind', 'Straight flush', 'Royal flush'
    ]
  attr_reader :hand

  def initialize(deck)
    @hand = []
    5.times { @hand << deck.draw }
  end

  def print
    puts hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  def hand_strength
    HAND_STRENGTH.index(evaluate)
  end
  
  def <=>(other)
    [hand_strength, rank_values.reverse] <=> [other.hand_strength, other.rank_values.reverse]
  end

  protected

  def rank_values
    hand.map(&:rank_value).sort
  end

  private

  def royal_flush?
    flush? && royals?
  end

  def straight_flush?
    flush? && straight?
  end

  def four_of_a_kind?
    n_of_a_kind?(4)
  end

  def full_house?
    n_of_a_kind?(3) && n_of_a_kind?(2)
  end

  def flush?
    hand.map(&:suit).uniq.size == 1
  end

  def straight?
    rank_values.each_cons(2) { |num1, num2| return false if num2 - num1 != 1 }
    true
  end

  def three_of_a_kind?
    n_of_a_kind?(3)
  end

  def two_pair?
    rank_values.uniq.select { |rank| rank_values.count(rank) == 2 }.size == 2
  end

  def pair?
    n_of_a_kind?(2)
  end

  def royals?
    rank_values.sum == 60
  end
  
  def n_of_a_kind?(num)
    rank_values.any? { |rank| rank_values.count(rank) == num }
  end
end

hand1 = PokerHand.new(Deck.new)
puts 'Hand 1'
hand1.print
puts hand1.evaluate
puts nil

hand2 = PokerHand.new(Deck.new)
puts 'Hand 2'
hand2.print
puts hand2.evaluate
puts nil

puts "Hand 1 > Hand 2 = #{hand1 > hand2}"

# Danger danger danger: monkey patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'

# ALTERNATE SOLUTIONS

class PokerHand
  def initialize(cards)
    @cards = []
    @rank_count = Hash.new(0)

    5.times do
      card = cards.draw
      @cards << card
      @rank_count[card.rank] += 1
    end
  end

  def print
    puts @cards
  end

  def evaluate
    if    royal_flush?     then 'Royal flush'
    elsif straight_flush?  then 'Straight flush'
    elsif four_of_a_kind?  then 'Four of a kind'
    elsif full_house?      then 'Full house'
    elsif flush?           then 'Flush'
    elsif straight?        then 'Straight'
    elsif three_of_a_kind? then 'Three of a kind'
    elsif two_pair?        then 'Two pair'
    elsif pair?            then 'Pair'
    else 'High card'
    end
  end

  private

  def flush?
    suit = @cards.first.suit
    @cards.all? { |card| card.suit == suit }
  end

  def straight?
    return false if @rank_count.any? { |_, count| count > 1 }

    @cards.min.value == @cards.max.value - 4
  end

  def n_of_a_kind?(number)
    @rank_count.one? { |_, count| count == number }
  end

  def straight_flush?
    flush? && straight?
  end

  def royal_flush?
    straight_flush? && @cards.min.rank == 10
  end

  def four_of_a_kind?
    n_of_a_kind?(4)
  end

  def full_house?
    n_of_a_kind?(3) && n_of_a_kind?(2)
  end

  def three_of_a_kind?
    n_of_a_kind?(3)
  end

  def two_pair?
    @rank_count.select { |_, count| count == 2 }.size == 2
  end

  def pair?
    n_of_a_kind?(2)
  end
end

# USING CLASS METHODS

# I highly doubt this is the best way to go about this but here is a solution for making all the individual classification methods into public class methods that work with an Array of 5 cards. Here are some changes that were made to the PokerHand class of the original solution by LS.

# Change all private instance methods to public class methods (except n_of_a_kind? becomes a private class method).
# Remove the initialize method since we are no longer creating objects from the PokerHand class.
# Remove the evaluate method since each classification method will do its own evaluating.
# Each classification method needs to initialize the hand on its own since the initialize method does not exist. init method was created to handle this for every class. its functionality is the same except it does not get the cards from the deck class but are instead passed in as an array.
# One additional method was created, high_card?, since we no longer have a case statement taking care of its logic.

class PokerHand

  def self.init(hand)
    @hand = hand
    @rank_count = Hash.new(0)
    @hand.each { |card| @rank_count[card.rank] += 1 }
  end

  def self.royal_flush?(hand)
    init(hand)
    straight_flush?(hand) && @hand.min.rank == 10
  end

  def self.straight_flush?(hand)
    init(hand)
    straight?(hand) && flush?(hand)
  end

  def self.four_of_a_kind?(hand)
    init(hand)
    n_of_a_kind?(4)
  end

  def self.full_house?(hand)
    init(hand)
    three_of_a_kind?(hand) && pair?(hand)
  end

  def self.flush?(hand)
    init(hand)
    suit = @hand.first.suit
    @hand.all? { |card| card.suit == suit }
  end

  def self.straight?(hand)
    init(hand)
    return false if @rank_count.any? { |_, count| count > 1 }

    @hand.min.value == @hand.max.value - 4
  end

  def self.three_of_a_kind?(hand)
    init(hand)
    n_of_a_kind?(3)
  end

  def self.two_pair?(hand)
    init(hand)
    @rank_count.select { |_, count| count ==2 }.size == 2
  end

  def self.pair?(hand)
    init(hand)
    n_of_a_kind?(2)
  end

  def self.high_card?(hand)
    init(hand)
    !pair?(hand) &&
    !three_of_a_kind?(hand) &&
    !four_of_a_kind?(hand) &&
    !straight?(hand) &&
    !flush?(hand)
  end

  private

  def self.n_of_a_kind?(number)
    @rank_count.one? { |_, count| count == number }
  end
end
