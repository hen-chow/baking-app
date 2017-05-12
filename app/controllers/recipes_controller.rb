class RecipesController < ApplicationController
  before_action :authenticate_user, only: [:create, :edit, :update, :destroy]

  def new
    @recipe = Recipe.new
    @baking_categories = BakingCategory.all
  end

  def create
    @baking_categories = BakingCategory.all
    @recipe = Recipe.new(clean_params)

    # to upload image to Cloudinary
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

  def search
    redirect_to recipes_results_path(search: "#{params[:find]}")
  end

  # create search function with the new of "where" and "like"
  def results
    @search_result = Recipe.where("name like ?", "%#{params[:search]}%")
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @baking_categories = BakingCategory.all
    @recipe = Recipe.find(params[:id])

# this line redirects the user away from the page unless the recipe belongs to them:
    redirect_to root_path unless @recipe.user_id = @current_user.id
  end

  def update
    @recipe = Recipe.find(params[:id])

# this line redirects the user away from the page unless the recipe belongs to them:
    redirect_to root_path unless @recipe.user_id = @current_user.id

    @recipe.update_attributes(clean_params)

# to update image in Cloudinary
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @recipe.image = req["public_id"]
      @recipe.save
    end

    redirect_to recipe_path(@recipe.id)

  end

  def destroy
    @recipe = Recipe.find(params[:id])
  end

  private

  def clean_params
    params.require(:recipe).permit(:name, :image, :skill_level, :prep_time, :cooking_time, :baking_category_id, :user_id)
  end
end
