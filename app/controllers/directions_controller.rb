class DirectionsController < ApplicationController
  before_action :authenticate_user

  def new
    @direction = Direction.new
  end

  def create
    direction = Direction.create(clean_params)
    if direction.save
      redirect_to recipe_path(id: params[:direction][:recipe_id])
    else
      render :new
    end
  end

  private

  def clean_params
    params.require(:direction).permit(:step, :recipe_id, :instruction)
  end
end
