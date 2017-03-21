class DirectionsController < ApplicationController
  before_action :authenticate_user

  def new
    @direction = Direction.new
  end

  def create
  end
end
