class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
  end

  def create
    food_item = FoodItem.find_or_create_by(name: params[:food_item][:name])
    recipe = Recipe.find(params[:ingredient][:recipe_id])
    Ingredient.create(qty: params[:ingredient][:qty], food_item_id: food_item.id, recipe_id: recipe.id)
    redirect_to new_direction_path(recipe_id: recipe.id)
  end

  private

  def clean_params
    params.require(:ingredient).permit(:qty, :food_item_id, :recipe_id)
  end
end
