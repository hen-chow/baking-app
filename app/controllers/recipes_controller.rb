class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @baking_categories = BakingCategory.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.create(clean_params)
    if @recipe.save
      redirect_to recipe_path(@recipe.id)
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

  end

  def destroy
    @recipe = Recipe.find(params[:id])
  end

  private

  def clean_params
    params.require(:recipe).permit(:name, :image, :skill_level, :method, :cooking_time, :baking_category_id)
  end
end
