class BakingCategoriesController < ApplicationController
  def index
    @baking_categories = BakingCategory.all
  end

  def new
    @baking_category = BakingCategory.new
  end

  def create
    @baking_category = BakingCategory.create(clean_params)
    redirect_to root_path
  end

  def edit
    @baking_category = BakingCategory.find(params[:id])
  end

  def update
  end

  def show
    @baking_category = BakingCategory.find(params[:id])
  end

  private

  def clean_params
    params.require(:baking_category).permit(:name)
  end

end
