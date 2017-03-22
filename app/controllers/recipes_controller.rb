class RecipesController < ApplicationController
  before_action :authenticate_user, only: [:create, :edit, :update, :destroy]
  def new
    @recipe = Recipe.new
    @baking_categories = BakingCategory.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    @baking_categories = BakingCategory.all
    @recipe = Recipe.new(clean_params)

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @recipe.image = req["public_id"]
    end

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
