class ThrowsController < ApplicationController
  # @!group Exposures

  # @!attribute _throw
  # The current throw.
  # @return [Throw]
  expose(:_throw) { Throw.new(params[:sign]) }

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
