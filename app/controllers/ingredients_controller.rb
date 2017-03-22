class IngredientsController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def new
    @ingredient = Ingredient.new
  end

  def create
    params[:ingredients].each do |i|
      if !i[:qty].empty? && !i[:name].empty?
        food_item = FoodItem.find_or_create_by(name: i[:name])
        @recipe = Recipe.find(params[:recipe_id])
        @ingredients = Ingredient.create(qty: i[:qty], food_item_id: food_item.id, recipe_id: @recipe.id)
      end
    end
    if @ingredients.save
      redirect_to new_direction_path(recipe_id: @recipe.id)
    else
      render :new
    end
  end

  private

  def clean_params
    params.require(:ingredients).permit(:qty, :food_item_id, :recipe_id)
  end
end
