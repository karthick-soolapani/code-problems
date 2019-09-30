# LS Course - Exercises
# RB120 Object Oriented Programming
# Chapter - Medium 1, Question 8, Highest and Lowest Ranking Cards

# QUESTION
# Update this class so you can use it to determine the lowest ranking and highest ranking cards in an Array of Card objects:

$stdout.sync = true # To display output immediately on windows using git bash

class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def value
    VALUES.fetch(@rank, @rank)
  end

  def <=>(other_card)
    value <=> other_card.value
  end
end

# FURTHER EXPLORATION

#1
class Card
  include Comparable

  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']
  SUITS = ['Spades', 'Hearts', 'Clubs', 'Diamonds']

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def <=>(other)
    [RANKS.index(rank), SUITS.index(suit)] <=> [RANKS.index(other.rank), SUITS.index(other.suit)]
  end
end


#2
class Card
  include Comparable
  attr_reader :rank, :suit
  RANK_VALUES = {
    "Jack" => 11,
    "Queen" => 12,
    "King" => 13,
    "Ace" => 14
  }
  SUIT_VALUES = {
    "Spades" => 0.8,
    "Hearts" => 0.6,
    "Clubs" => 0.4,
    "Diamonds" => 0.2
  }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{@rank} of #{@suit}"
  end

  def inspect; to_s; end

  def value
    RANK_VALUES.fetch(@rank, @rank) + SUIT_VALUES[@suit]
  end

  def <=>(other_card)
    value <=> other_card.value
  end

end
