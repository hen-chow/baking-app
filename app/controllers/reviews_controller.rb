class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(clean_params)
    redirect_to recipe_path(@review.recipe_id)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def clean_params
    params.require(:review).permit(:rating, :message, :user_id, :recipe_id)
  end
end
