class BakingCategoriesController < ApplicationController
  def index
    @baking_categories = BakingCategory.all
  end

  def show
    @baking_category = BakingCategory.find(params[:id])
  end

end
