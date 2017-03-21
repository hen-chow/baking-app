class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
  end

  def create
    food_item = FoodItem.find_or_create_by(name: params[:ingredient][:name])
    @recipe = Recipe.find(params[:recipe_id])
    Ingredient.create(recipe_id: params[:recipe_id], food_item_id: food_item.id, qty: params[:qty])

  end

  private

  def clean_params
    params.require(:ingredient).permit(:qty, :food_item_id, :recipe_id)
  end

end
