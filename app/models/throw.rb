# This class represents a throw.
class Throw
  # @!attribute sign
  # The sign that was selected by the user.
  # @return [String]
  attr_reader :sign

  # This method creates a new throw.
  #
  # @param [String] sign
  # The sign selected by the user.
  #
  # @return [Throw]
  def initialize(sign)
    @sign = sign
  end

  # This method returns the result.
  #
  # @return [Symbol]
  def result
    if random == sign
      :tie
    elsif Throw.winners.include?([sign, random])
      :win
    else
      :lose
    end
  end

  # This method gets a random pick.
  #
  # @return [String]
  def random
    @random ||= Throw.signs.shuffle.first
  end

  # This method gets all the signs that are available.
  #
  # @return [Array]
  def self.signs
    %w(rock paper scissors)
  end

  # This method gets all the winner combinations.
  #
  # @return [Array<Array>]
  def self.winners
    [
      ['rock', 'scissors'],
      ['scissors', 'paper'],
      ['paper', 'rock']
    ]
  end
end