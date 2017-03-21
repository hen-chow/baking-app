class RecipesController < ApplicationController
  before_action :authenticate_user, only: [:new, :create, :edit, :update, :destroy]
  def new
    @recipe = Recipe.new
    @baking_categories = BakingCategory.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    @baking_categories = BakingCategory.all
    @recipe = Recipe.create(clean_params)
    if @recipe.save
      redirect_to new_ingredient_path(recipe_id: @recipe.id)
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
    params.require(:recipe).permit(:name, :image, :skill_level, :prep_time, :cooking_time, :baking_category_id, :user_id)
  end
end
