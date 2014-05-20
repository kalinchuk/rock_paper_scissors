class ThrowsController < ApplicationController
  # @!group Exposures

  # @!attribute signs
  # The signs that are available to throw.
  # @return [Array]
  expose(:signs) { %w(rock paper scissors) }

  # @!group Actions

  # This action displays a form for selecting a sign to throw.
  #
  # @return [Action]
  # @render new
  def new
  end

  # This action throws a sign and determines if the user has won.
  #
  # @return [Action]
  # @render create
  def create
  end
end
