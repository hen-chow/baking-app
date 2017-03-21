class ReviewsController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(clean_params)
    redirect_to recipe_path(@review.recipe_id)
  end

  def destroy
    if @current_user.admin
      review = Review.find(params[:id]).destroy
      flash[:success] = "You deleted this review"
      redirect_to root_path
    else
      flash[:error] = "You don't have permission to delete this review"
      redirect_to root_path
    end
  end

  private

  def clean_params
    params.require(:review).permit(:rating, :message, :user_id, :recipe_id)
  end
end
